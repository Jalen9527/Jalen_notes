<?php
/**
 * This file is part of workerman.
 *
 * Licensed under The MIT License
 * For full copyright and license information, please see the MIT-LICENSE.txt
 * Redistributions of files must retain the above copyright notice.
 *
 * @author walkor<walkor@workerman.net>
 * @copyright walkor<walkor@workerman.net>
 * @link http://www.workerman.net/
 * @license http://www.opensource.org/licenses/mit-license.php MIT License
 */

/**
 * 用于检测业务代码死循环或者长时间阻塞等问题
 * 如果发现业务卡死，可以将下面declare打开（去掉//注释），并执行php start.php reload
 * 然后观察一段时间workerman.log看是否有process_timeout异常
 */
//declare(ticks=1);

use \GatewayWorker\Lib\Gateway;

/**
 * 主逻辑
 * 主要是处理 onConnect onMessage onClose 三个方法
 * onConnect 和 onClose 如果不需要可以不用实现并删除
 */
class Events
{
    /**
     * 当客户端连接时触发
     * 如果业务不需此回调可以删除onConnect
     * 
     * @param int $client_id 连接id
     */
    public static function onConnect($client_id) {
        // 向当前client_id发送数据 
        Gateway::sendToClient($client_id, "Hello $client_id\n");
        // 向所有人发送
        //Gateway::sendToAll("$client_id login\n");
    }
    
   /**
    * 当客户端发来消息时触发
    * @param int $client_id 连接id
    * @param mixed $message 具体消息
    */
   public static function onMessage($client_id, $message) {
        
        $host = "http://new.qcshendeng.com/appapi/home";
        //接收到信息后处理
        $MsgArr =  json_decode($message,true);

        

        if( is_array($MsgArr) && $MsgArr['type'] = 'login' ){
          //登录操作

          $Events = new Events();
          $token = $MsgArr['token'];
          $uid = $MsgArr['uid'];
          $url = $host."/user/EventsLogin?uid=".$uid."&client_id=".$client_id."&token=".$token;
          $res = $Events->http_get($url);
          $ret = json_decode($res,true);

          //if( $ret['code'] == '0'){
            //需要重新登录  已经在 userf发布
              // $retrun['type'] = 'logout';
              // $retrun['msg'] = $ret['msg'];
              // //发送消息
              // Gateway::sendToClient($ret['old_client_id'], json_encode($retrun) );
              
          // }else{
          //   Gateway::sendToClient($client_id, json_encode($ret) );
          // }
          
        }


        // 向所有人发送 
        //Gateway::sendToAll("$client_id said $message");
   }
   
   /**
    * 当用户断开连接时触发
    * @param int $client_id 连接id
    */
   public static function onClose($client_id) {
       // 向所有人发送 
       //GateWay::sendToAll("$client_id logout");

   }



  public  function http_get($url){

          $oCurl = curl_init();
          if(stripos($url,"https://")!==FALSE){
            curl_setopt($oCurl, CURLOPT_SSL_VERIFYPEER, FALSE);
            curl_setopt($oCurl, CURLOPT_SSL_VERIFYHOST, FALSE);
            curl_setopt($oCurl, CURLOPT_SSLVERSION, 1); //CURL_SSLVERSION_TLSv1
          }
          curl_setopt($oCurl, CURLOPT_URL, $url);
          curl_setopt($oCurl, CURLOPT_RETURNTRANSFER, 1 );
          $sContent = curl_exec($oCurl);
          $aStatus = curl_getinfo($oCurl);
          curl_close($oCurl);
          if(intval($aStatus["http_code"])==200){
            return $sContent;
          }else{
            return false;
          }
    }


}




