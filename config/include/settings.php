<?php 

$settings = array();

$fieldset = array(
	"currency" => "currency",
	"name" => "bname",
	"logo" => "logo",
	"emaila" => "email",
	"phone" => "phone",
	"address" => "baddress",
	"title" => "title",
	"branch" => "branch",
	"bankurl" => "sname",
	"wl" => "wl",
	"rb" => "rb",
	"ids" => "id",
	"init" => "hea",
	"act" => "act",
	"cy" => "cy",
	"pre" => "inert",
	"jso" => "jso"
);

$query = mysqli_query($link, "SELECT * FROM settings ");


$rowset = mysqli_fetch_assoc($query);

foreach( $fieldset as $key => $column ) {
	$settings[$key] = !empty($rowset) ? $rowset[ $column ] : null;
};

$settings['logourl'] = sysfunc::url( __admin_dir . '/c2wad/logo/' . (!empty($settings['logo']) ? $settings['logo'] : 'logo.png') );


require __dir__ . "/google-recaptcha-api-class.php";
