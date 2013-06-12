<?php /* Smarty version Smarty-3.1.13, created on 2013-05-23 11:59:15
         compiled from "..\..\htdocs\WeBid\templates\global_footer.tpl" */ ?>
<?php /*%%SmartyHeaderCode:10941519de873250b02-22098272%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'fa061fb4ba4eed01470c7c7ca612d26fab01713d' => 
    array (
      0 => '..\\..\\htdocs\\WeBid\\templates\\global_footer.tpl',
      1 => 1369208574,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '10941519de873250b02-22098272',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'SITEURL' => 0,
    'L_166' => 0,
    'L_028' => 0,
    'L_622' => 0,
    'SSLURL' => 0,
    'L_245' => 0,
    'L_235' => 0,
    'L_052' => 0,
    'L_148' => 0,
    'L_25_0012' => 0,
    'L_5085' => 0,
    'L_401' => 0,
    'L_5086' => 0,
    'L_COPY' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_519de873380653_42581416',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_519de873380653_42581416')) {function content_519de873380653_42581416($_smarty_tpl) {?><br>
	<div class="footer">
		<a href="<?php echo $_smarty_tpl->tpl_vars['SITEURL']->value;?>
index.php?"><?php echo $_smarty_tpl->tpl_vars['L_166']->value;?>
</a>
<!-- IF B_CAN_SELL -->
		| <a href="<?php echo $_smarty_tpl->tpl_vars['SITEURL']->value;?>
select_category.php?"><?php echo $_smarty_tpl->tpl_vars['L_028']->value;?>
</a>
<!-- ENDIF -->
<!-- IF B_LOGGED_IN -->
		| <a href="<?php echo $_smarty_tpl->tpl_vars['SITEURL']->value;?>
user_menu.php?"><?php echo $_smarty_tpl->tpl_vars['L_622']->value;?>
</a> 
		| <a href="<?php echo $_smarty_tpl->tpl_vars['SSLURL']->value;?>
logout.php?"><?php echo $_smarty_tpl->tpl_vars['L_245']->value;?>
</a> 
<!-- ELSE -->
		| <a href="<?php echo $_smarty_tpl->tpl_vars['SSLURL']->value;?>
register.php?"><?php echo $_smarty_tpl->tpl_vars['L_235']->value;?>
</a> 
		| <a href="<?php echo $_smarty_tpl->tpl_vars['SSLURL']->value;?>
user_login.php?"><?php echo $_smarty_tpl->tpl_vars['L_052']->value;?>
</a> 
<!-- ENDIF -->
		| <a href="<?php echo $_smarty_tpl->tpl_vars['SITEURL']->value;?>
faqs.php" alt="faqs" class="new-window"><?php echo $_smarty_tpl->tpl_vars['L_148']->value;?>
</a>
<!-- IF B_FEES -->
		| <a href="<?php echo $_smarty_tpl->tpl_vars['SITEURL']->value;?>
fees.php"><?php echo $_smarty_tpl->tpl_vars['L_25_0012']->value;?>
</a> 
<!-- ENDIF -->
<!-- IF B_VIEW_ABOUTUS -->
		| <a href="<?php echo $_smarty_tpl->tpl_vars['SITEURL']->value;?>
contents.php?show=aboutus"><?php echo $_smarty_tpl->tpl_vars['L_5085']->value;?>
</a> 
<!-- ENDIF -->
<!-- IF B_VIEW_PRIVPOL -->
		| <a href="<?php echo $_smarty_tpl->tpl_vars['SITEURL']->value;?>
contents.php?show=priv"><?php echo $_smarty_tpl->tpl_vars['L_401']->value;?>
</a> 
<!-- ENDIF -->
<!-- IF B_VIEW_TERMS -->
		| <a href="<?php echo $_smarty_tpl->tpl_vars['SITEURL']->value;?>
contents.php?show=terms"><?php echo $_smarty_tpl->tpl_vars['L_5086']->value;?>
</a> 
<!-- ENDIF -->
		<br>
	</div>
	<div class="copyright">
		<?php echo $_smarty_tpl->tpl_vars['L_COPY']->value;?>

		<!--
			We request you retain the full copyright notice below including the link to www.webidsupport.com.
			This not only gives respect to the large amount of time given freely by the developers
			but also helps build interest, traffic and use of WeBid. If you (honestly) cannot retain
			the full copyright we ask you at least leave in place the "Powered by WeBid" line, with
			"WeBid" linked to www.webidsupport.com. If you must remove thte copyright message pelase make
            a donation at http://www.webidsupport.com/donate.php to help pay for future developments
		-->
		Powered by <a href="http://www.webidsupport.com/">WeBid</a> &copy; 2008 - 2011 <a href="http://www.webidsupport.com/">WeBid</a>
	</div>
</div>
</body>
</html><?php }} ?>