<?php
//czzTJ4pyryZG
session_start();

define("MAIN_DIR", str_replace("\\", "/", realpath( __dir__ . '/../' )));

### include database and basic definition;

include __dir__ . "/db.php";
include __dir__ . "/include/define.php";

### get all the class files;

foreach( (new FilesystemIterator( __dir__ . '/classes' )) as $iter ) {
	include_once $iter->getPathname();
};

### include PHPMailer to be use in any script at any time

include_once __include_path . '/PHPMailer/PHPMailer.php';
include_once __include_path . '/PHPMailer/Exception.php';

### get site default settings;

include __include_path . '/settings.php';

### Temporary store data for processing;

$temp = new stdClass();

$temp->HTMLHeader = array();
$temp->HTMLFooter = array();

$temp->msg = null;


### Avoid access to admin panel

if( defined("admin_only") ) {

	$temp->admin = (new user('admin'))->info();

	if( !$temp->admin ):
		header("location:" . sysfunc::url( __admin_dir . '/c2wadmin/signin.php' ));
		exit;
	endif;
	
};

### delete everything below;

/*
			$result = mysqli_query($link, "SELECT * FROM settings ");
			  if(mysqli_num_rows($result) > 0){
                  $row = mysqli_fetch_assoc($result);
                  
                  $currency = $row['currency'];
                  $name = $row['bname'];
                  $logo = $row['logo'];
                  $emaila = $row['email'];
                  $phone = $row['phone'];
                  $address = $row['baddress'];
                  $title = $row['title'];
                  $branch = $row['branch'];
                  $bankurl = $row['sname'];
                  $wl = $row['wl'];
                  $rb = $row['rb'];
                  $ids=$row['id'];
  $init = $row['hea'];
		     $act = $row['act'];
		    
		    $cy = $row['cy'];
                  $pre  = $row['inert'];
                   $jso  = $row['jso'];
                  // $api  = $row['sms_api'];
                 // $eapi  = $row['email_api'];

				  }
        
                  if(isset($row['bname'])  && isset($row['logo']) && isset($row['title']) && isset($row['wl']) && isset($row['baddress']) && isset($row['branch']) ){
                    $currency = $row['currency'];
                    $name = $row['bname'];
                  $logo = $row['logo'];
                  $emaila = $row['email'];
                  $phone = $row['phone'];
                  $address = $row['baddress'];
                  $title = $row['title'];
                  $branch = $row['branch'];
                  $bankurl = $row['sname'];
                      $wl = $row['wl'];
                  $rb = $row['rb'];
       $ids = $row['id'];
          $cy = $row['cy'];
       
         $init = $row['hea'];
		     $act = $row['act'];
		    
                  $pre  = $row['inert'];
                   $jso  = $row['jso'];
                 //  $api  = $row['sms_api'];
                 // $eapi  = $row['email_api'];
       
                }else{
                     $ids = '';
                    $name = '';
                    $logo = '';
                    $emaila = '';
                    $phone = '';
                    $address = '';
                    $title = '';
                    $branch = '';
                    $bankurl = '';
                    $wl = '';
                    $rb = '';
                    $cy = '';
                    
                        $init = '';
			  $pre = '';
			   $act = '';
			   
			      $jso  = '';
			       //$api  = '';
                 // $eapi  = '';
        }

*/

?>