<?php

class sysfunc {

	public static function url( $dir ) {
		$url = str_replace($_SERVER['DOCUMENT_ROOT'], $_SERVER['SERVER_NAME'], str_replace("\\", "/", $dir));
		$proto = ($_SERVER['SERVER_PORT'] == 80) ? 'http://' : "https://";
		return $proto . $url;
	}
	
	public static function sanitize_input($data, $escape_string = false) {
		if( is_array($data) ) {
			foreach( $data as $key => $value ) {
				$data[$key] = self::sanitize_input($value, $escape_string);
			};
		} else {
			$data = trim($data);
			$data = stripslashes($data);
			$data = htmlspecialchars($data);
			if( $escape_string ) {
				global $link;
				$data = $link->real_escape_string($data);
			}
		};
		return $data;
	}
	
	public static function clear_input($data) {
		if( is_array($data) ) {
			foreach( $data as $key => $value ) 
				$data[$key] = self::clear_input($value);
		} else $data = null;
		return $data;
	}
	
	public static function initMail( ) {
		global $settings;
		$PHPMailer = new PHPMailer\PHPMailer\PHPMailer(true);
		$PHPMailer->setFrom($settings['emaila'], $settings['name']);
		$PHPMailer->isHTML(true);
		return $PHPMailer;
	}
	
	public static function keygen(int $length, bool $specialChar = false) {
		$choices = implode('', range(0,9));
		$choices .= implode('', range('a','z'));
		$choices .= implode('', range('A', 'Z'));
		if( $specialChar ) $choices .= implode('', ['/', '<', '>', '[', ']', '(', ')', '{', '}', '|', '@', '#']);
		$choices = str_shuffle($choices);
		$keygen = substr($choices, 0, $length);
		return $keygen;
	}
	
	public static function encpass( $password ) {
		return md5($password);
	}
	
	public static function mysql_insert_str( string $table, array $data ) {
		$columns = implode(", ", array_map(function($col) {
			return "`{$col}`";
		}, array_keys($data)));
		$values = implode(", ", array_map(function($val) {
			return "'{$val}'";
		}, array_values($data)));
		$str = "INSERT INTO {$table} ($columns) VALUES ($values)";
		return $str;
	}
	
	public static function mysql_update_str( string $table, array $data, $email = null ) {
		$pairs = implode(", ", array_map(function($key, $value) {
			return "`{$key}` = '{$value}'";
		}, array_keys($data), array_values($data)));
		$str = "UPDATE {$table} SET {$pairs}";
		if( $email ) $str .= " WHERE email = '{$email}'";
		return $str;
	}
	
	public static function html_notice( ?string $str = null, $type = null ) {
		if( is_null($str) ) {
			global $temp;
			$str = $temp->msg ?? null;
		};
		if( $type === null ) $type = 'primary';
		else if( !is_string($type) ) {
			$type = $type ? 'success' : 'danger';
		};
		if( !empty($str) ) {
			echo "<div class='alert alert-{$type} alert-dismissible'>
				<button type='button' class='close' data-dismiss='alert'>&times;</button>
				{$str}
			</div>";
		};
	}
	
	public static function validateImage( ?array $upload, float $maxsize = 1.5 ) {
		if( empty($upload) ) return false;
		$upload['error_msg'] = null;
		if( empty($upload['size']) ) $upload['error_msg'] = 'No image was uploaded';
		else {
			$imgsize = getimagesize( $upload['tmp_name'] );
			if( empty($imgsize) ) $upload['error_msg'] = "The uploaded image is not valid";
			else {
				$megabyte = $upload['size'] / pow(1024,2);
				if( $megabyte > $maxsize ) $upload['error_msg'] = "The uploaded image size is too large";
				else {
					$type = strtolower(pathinfo($upload['name'],PATHINFO_EXTENSION));
					if( !in_array($type, ['jpg', 'png', 'jpeg']) ) $upload['error_msg'] = "Only JPG, JPEG &amp; PNG files are allowed";
					else $upload['extension'] = $type;
				};
			}
		};
		return $upload;
	}
	
	public static function countries(?string $key = null) {
		$json = file_get_contents( __json_dir . '/countries.json' );
		$countries = json_decode($json, true);
		$modify = array();
		foreach( $countries as $country ) {
			$modify[ ($country['Code']) ] = $country['Name'];
		};
		return empty($key) ? $modify : ($modify[$key] ?? null);
	}
	
	public static function get_json_config(?string $key = null) {
	    global $link;
	    $SQL = "SELECT json_config FROM settings";
	    $result = $link->query($SQL)->fetch_assoc()['json_config'];
	    $data = json_decode($result, true);
	    if( is_null($key) ) return $data; // array
	    else return isset($data[$key]) ? $data[$key] : null;
	}
	
	public static function set_json_config(?string $key, $value) {
	    global $link;
	    $data = self::get_json_config();
	    $data[$key] = $value;
	    $data = json_encode($data);
	    $data = $link->real_escape_string($data);
	    $SQL = "UPDATE settings SET json_config = '{$data}'";
	    $result = $link->query( $SQL );
	    return $result;
	}
	
	
}