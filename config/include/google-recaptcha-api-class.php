<?php
	
class google_v2_captcha {
	
	public $site_key;
	public $secret_key;
	
	protected $google_js = 'https://www.google.com/recaptcha/api.js';
	protected $response_api = 'https://www.google.com/recaptcha/api/siteverify';
	
	public function testmode(bool $test = true ) {
		$this->site_key = $test ? '6LeIxAcTAAAAAJcZVRqyHh71UMIEGNQ_MXjiZKhI' : null;
		$this->secret_key = $test ? '6LeIxAcTAAAAAGG-vFI1TnRWxMZNFuojJ4WifJWe' : null;
	}
	
	public function output() { ?>
		<div class="g-recaptcha" data-sitekey="<?php echo $this->site_key; ?>"></div>
		<script src='<?php echo $this->google_js; ?>'></script>
	<?php }
	
	public function verify() {
		if( empty($_POST['g-recaptcha-response']) ) return false;
		$http_query = http_build_query(array(
			"secret" => $this->secret_key,
			"response" => $_POST['g-recaptcha-response'],
			"remoteip" => $_SERVER['REMOTE_ADDR']
		));
		$url = $this->response_api . "?{$http_query}";
		$response = json_decode( file_get_contents( $url ), true );
		return $response['success'];
	}
	
}

