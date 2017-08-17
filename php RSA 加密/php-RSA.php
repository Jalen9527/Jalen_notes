<?php

class phpRas {
	//私钥匙
	private $private_key = "-----BEGIN RSA PRIVATE KEY-----
MIICXQIBAAKBgQC4f/HEyowl38tQ71X+nV7G1T6ZmtJjPz97YItJ0CzioeZ+anm5
pADE9GHC4TQ+9OG5lQ/UEAMr80l8ZXtu3nRrXlstHs0gLNdx3myWWS7g0iNMWHU0
UPSXjAic3X/EFc2z9+wO8U3tJeuXpxrb1RfmGCaT5OZZwfApS/IWTgujFQIDAQAB
AoGAIQ2i5auX0g024ogOMvBEk4COl3w6Jtek6tiP+6hU8kEpBwrSReTQ0ngpr30j
HAhJDDNdQ5OezdfnGWcg5urpliiLYAlHzF5w4/0g4SX9bHg9z4PDBmtjS0sBLKSz
oxbZvHQW5TeoHIfBvI0qPSzn7gxdefnlrqquInt/s67tkD0CQQDsVavG4R4glPmu
QLl4SbuISDMmfdLZVO+CIfBnnEe237OaIhJmgnQYcUG+iwKTEVrEFnZH1AlXSFtW
6zbu0SzPAkEAx9oaTjkG8tSiOcos1hyKGGuTnJ6RwQWeWelMPhB+Y1DrVFGI7PiE
BdzLoUoXJ/eyX27j0zJEMtHnhPNao0BS2wJBANVMeQ21LejALBy+I+bRvSTB7RBn
bT5jbwsnMH+CyCLgAYwyBiNox/krdufPNJKhjib+EuC/GXMiRfXLsreWKHcCQCYE
fGqS+JprDq01o4/bf/2jQUJS++EfI39xHPrVgmV8ODgjBowlvl+rH+V/xaXpvbnf
y2Eat9R/D66/6GcTzm8CQQDbbDOKztbvZDstYC7i39fSnFr6/yqrk6bu70k85sW9
3NPH6Jp+8LS/GbADFo3e/1ChAOpO5j0aXH5bc5KpDzbg
-----END RSA PRIVATE KEY-----";
	
	//公钥匙
    private $public_key = "-----BEGIN PUBLIC KEY-----
MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQC4f/HEyowl38tQ71X+nV7G1T6Z
mtJjPz97YItJ0CzioeZ+anm5pADE9GHC4TQ+9OG5lQ/UEAMr80l8ZXtu3nRrXlst
Hs0gLNdx3myWWS7g0iNMWHU0UPSXjAic3X/EFc2z9+wO8U3tJeuXpxrb1RfmGCaT
5OZZwfApS/IWTgujFQIDAQAB
-----END PUBLIC KEY-----";



	public function login(){

		//$rsa_data = $_GET['data'] ; //获取加密之后的字符串

		$private_key = $this->private_key;
        $public_key = $this->public_key;

        $pi_key =  openssl_pkey_get_private($private_key);// 可用返回资源id
        $pu_key = openssl_pkey_get_public($public_key);


        //开始加密
        $data['name'] = 'xiaomi';
        $data['pwd'] = '123456';
        $jsonData = json_encode($data);
        $encrypted = '';
        openssl_public_encrypt($jsonData,$encrypted,$pi_key);//私钥加密  公钥匙加密： openssl_public_encrypt($jsonData,$encrypted,$pi_key)
		$encrypted = base64_encode($encrypted);//加密后的内容通常含有特殊字符，需要编码转换下，在网络间通过url传输时要注意base64编码是否是url安全的
		echo $encrypted,"\n";  //加密后的字符串



		//开始解密
		$rsa_data = $encrypted;
       	$decrypted = '';
        openssl_private_decrypt(base64_decode($rsa_data), $decrypted, $pi_key);//私钥解密  
        //公钥匙解密 ： openssl_public_decrypt(base64_decode($rsa_data), $decrypted, $pi_key);

        $jsonarr = json_decode($decrypted,true); //获取到json格式的解密信息 转为array

        $username = $name ? $name :$jsonarr['username'];
        $password = $pwd ? $pwd :$jsonarr['password'];


	}

} 
