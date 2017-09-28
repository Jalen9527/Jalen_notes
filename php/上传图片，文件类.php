<?php


//导入照片 or 文件
function uploaded($filename){
	global $file_src;
	$file=$_FILES[$filename];
	$name=$file['name'];
	$type=$file['type'];
	$size=intval($file['size']);
	$tmp_name=$file['tmp_name'];
	
	$file_type=array('image/jpg','image/jpeg','image/png','image/pjpeg','image/gif','image/bmp');
	if(in_array($type,$file_type)){
		if($size<512000){
			$time=date("Ymd",time());  
			!is_dir('upload/'.$time)?Mk_Folder('upload/'.$time):'';//判断文件目录是否存在,不存在将创建；
			//var_dump(is_dir('upload/'.$time));exit;
			image_png_size_add($tmp_name,'upload/'.$time."/".$name);//移动文件并压缩图片文件
			$file_src='upload/'.$time."/".$name;
			return $file_src;
			
		}else{
			adminmsg("文件太大或未选择文件",1);
		}
	}else{
		adminmsg('抱歉！不支持此文件格式！',1);	
	}
}

//新建文件夹
function Mk_Folder($Folder){

  if(!is_readable($Folder)){

    Mk_Folder( dirname($Folder) );

    if(!is_file($Folder)) mkdir($Folder,0777);
		
    }
}


/** 
* desription 压缩图片 
* @param sting $imgsrc 图片路径 
* @param string $imgdst 压缩后保存路径 
*/
function image_png_size_add($imgsrc,$imgdst){ 
  list($width,$height,$type)=getimagesize($imgsrc); 
  $new_width = ($width>600?600:$width)*0.9; 
  $new_height =($height>600?600:$height)*0.9; 
  switch($type){ 
    case 1: 
      $giftype=check_gifcartoon($imgsrc); 
      if($giftype){ 
        header('Content-Type:image/gif'); 
        $image_wp=imagecreatetruecolor($new_width, $new_height); 
        $image = imagecreatefromgif($imgsrc); 
        imagecopyresampled($image_wp, $image, 0, 0, 0, 0, $new_width, $new_height, $width, $height); 
        imagejpeg($image_wp, $imgdst,75); 
        imagedestroy($image_wp); 
      } 
      break; 
    case 2: 
      header('Content-Type:image/jpeg'); 
      $image_wp=imagecreatetruecolor($new_width, $new_height); 
      $image = imagecreatefromjpeg($imgsrc); 
      imagecopyresampled($image_wp, $image, 0, 0, 0, 0, $new_width, $new_height, $width, $height); 
      imagejpeg($image_wp, $imgdst,75); 
      imagedestroy($image_wp); 
      break; 
    case 3: 
      header('Content-Type:image/png'); 
      $image_wp=imagecreatetruecolor($new_width, $new_height); 
      $image = imagecreatefrompng($imgsrc); 
      imagecopyresampled($image_wp, $image, 0, 0, 0, 0, $new_width, $new_height, $width, $height); 
      imagejpeg($image_wp, $imgdst,75); 
      imagedestroy($image_wp); 
      break; 
  } 
} 
/** 
* desription 判断是否gif动画 
* @param sting $image_file图片路径 
* @return boolean t 是 f 否 
*/
function check_gifcartoon($image_file){ 
  $fp = fopen($image_file,'rb'); 
  $image_head = fread($fp,1024); 
  fclose($fp); 
  return preg_match("/".chr(0x21).chr(0xff).chr(0x0b).'NETSCAPE2.0'."/",$image_head)?false:true; 
} 


