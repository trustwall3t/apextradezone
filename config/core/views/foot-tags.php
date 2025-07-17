<script src="<?php echo sysfunc::url( __core_vendors . '/components/jquery/jquery.min.js' ); ?>"></script>
<script src="<?php echo sysfunc::url( __core_vendors . '/components/jquery-ui/jquery-ui.min.js' ); ?>"></script>
<script src="<?php echo sysfunc::url( __core_vendors . '/components/bootstrap/js/bootstrap.bundle.min.js' ); ?>"></script>
	
<script src="<?php echo sysfunc::url( __core_vendors . '/components/jquery-slimscroll/jquery.slimscroll.js' ); ?>" ></script>
<script src="<?php echo sysfunc::url( __core_vendors . '/components/fastclick/lib/fastclick.js' ); ?>"></script>

<script src="<?php echo sysfunc::url( __core_vendors . '/components/sweetalert/sweetalert.min.js' ); ?>"></script>

<script src="<?php echo sysfunc::url( __core_vendors . '/components/dataTables/datatables.min.js' ); ?>"></script>

<script src="<?php echo sysfunc::url( __dir__ . '/script.js' ); ?>"></script>

<?php foreach( $temp->HTMLFooter as $script ) print_r($script); ?>