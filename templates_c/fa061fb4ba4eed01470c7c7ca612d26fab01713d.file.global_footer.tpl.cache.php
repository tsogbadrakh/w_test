<?php /* Smarty version Smarty-3.1.13, created on 2013-05-23 13:01:40
         compiled from "..\..\htdocs\WeBid\templates\global_footer.tpl" */ ?>
<?php /*%%SmartyHeaderCode:20492519c771116d609-86337983%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'fa061fb4ba4eed01470c7c7ca612d26fab01713d' => 
    array (
      0 => '..\\..\\htdocs\\WeBid\\templates\\global_footer.tpl',
      1 => 1369306889,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '20492519c771116d609-86337983',
  'function' => 
  array (
  ),
  'cache_lifetime' => 3600,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_519c77111c8171_81005928',
  'variables' => 
  array (
    'SITEURL' => 0,
    'B_CAN_SELL' => 0,
    'B_LOGGED_IN' => 0,
    'SSLURL' => 0,
    'B_FEES' => 0,
    'B_VIEW_ABOUTUS' => 0,
    'B_VIEW_PRIVPOL' => 0,
    'B_VIEW_TERMS' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_519c77111c8171_81005928')) {function content_519c77111c8171_81005928($_smarty_tpl) {?><br>
	<div class="footer">
		<a href="<?php echo $_smarty_tpl->tpl_vars['SITEURL']->value;?>
index.php?"><?php echo $_smarty_tpl->getConfigVariable('L_166');?>
</a>
<?php if ($_smarty_tpl->tpl_vars['B_CAN_SELL']->value){?>
		| <a href="<?php echo $_smarty_tpl->tpl_vars['SITEURL']->value;?>
select_category.php?"><?php echo $_smarty_tpl->getConfigVariable('L_028');?>
</a>
<?php }?>
<?php if ($_smarty_tpl->tpl_vars['B_LOGGED_IN']->value){?>
		| <a href="<?php echo $_smarty_tpl->tpl_vars['SITEURL']->value;?>
user_menu.php?"><?php echo $_smarty_tpl->getConfigVariable('L_622');?>
</a> 
		| <a href="<?php echo $_smarty_tpl->tpl_vars['SSLURL']->value;?>
logout.php?"><?php echo $_smarty_tpl->getConfigVariable('L_245');?>
</a> 
<?php }else{ ?>
		| <a href="<?php echo $_smarty_tpl->tpl_vars['SSLURL']->value;?>
register.php?"><?php echo $_smarty_tpl->getConfigVariable('L_235');?>
</a> 
		| <a href="<?php echo $_smarty_tpl->tpl_vars['SSLURL']->value;?>
user_login.php?"><?php echo $_smarty_tpl->getConfigVariable('L_052');?>
</a> 
<?php }?>
		| <a href="<?php echo $_smarty_tpl->tpl_vars['SITEURL']->value;?>
faqs.php" alt="faqs" class="new-window"><?php echo $_smarty_tpl->getConfigVariable('L_148');?>
</a>
<?php if ($_smarty_tpl->tpl_vars['B_FEES']->value){?>
		| <a href="<?php echo $_smarty_tpl->tpl_vars['SITEURL']->value;?>
fees.php"><?php echo $_smarty_tpl->getConfigVariable('L_25_0012');?>
</a> 
<?php }?>
<?php if ($_smarty_tpl->tpl_vars['B_VIEW_ABOUTUS']->value){?>
		| <a href="<?php echo $_smarty_tpl->tpl_vars['SITEURL']->value;?>
contents.php?show=aboutus"><?php echo $_smarty_tpl->getConfigVariable('L_5085');?>
</a> 
<?php }?>
<?php if ($_smarty_tpl->tpl_vars['B_VIEW_PRIVPOL']->value){?>
		| <a href="<?php echo $_smarty_tpl->tpl_vars['SITEURL']->value;?>
contents.php?show=priv"><?php echo $_smarty_tpl->getConfigVariable('L_401');?>
</a> 
<?php }?>
<?php if ($_smarty_tpl->tpl_vars['B_VIEW_TERMS']->value){?>
		| <a href="<?php echo $_smarty_tpl->tpl_vars['SITEURL']->value;?>
contents.php?show=terms"><?php echo $_smarty_tpl->getConfigVariable('L_5086');?>
</a> 
<?php }?>
		<br>
	</div>
	<div class="copyright">
		<?php echo $_smarty_tpl->getConfigVariable('L_COPY');?>

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