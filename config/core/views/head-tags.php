<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<meta name="description" content="">
<meta name="author" content="">

<link rel="icon" href="<?php echo $settings['logourl']; ?>">
<title><?php echo $settings['title']; ?></title>

<link rel="stylesheet" href="<?php echo sysfunc::url( __core_vendors . '/components/bootstrap/css/bootstrap.min.css' ); ?>">
  <script src="https://kit.fontawesome.com/a2dabf9aea.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="<?php echo sysfunc::url( __core_vendors . '/dist/css/skins/_all-skins.css' ); ?>">
<link rel="stylesheet" href="<?php echo sysfunc::url( __core_vendors . '/components/sweetalert/sweetalert.css' ); ?>">
<link rel="stylesheet" href="<?php echo sysfunc::url( __core_vendors . '/components/dataTables/datatables.min.css' ); ?>">
<link rel="stylesheet" href="<?php echo sysfunc::url( __dir__ . '/style.css' ); ?>">

<?php foreach( $temp->HTMLHeader as $script ) print_r($script); ?>

