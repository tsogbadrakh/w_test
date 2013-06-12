<?php /* Smarty version Smarty-3.1.13, created on 2013-06-11 10:07:58
         compiled from "..\..\htdocs\WeBid\templates\browsecats.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1015251b6dadea18610-49235281%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '42a9963d95025547ee6259bdcd11d7289fd9497b' => 
    array (
      0 => '..\\..\\htdocs\\WeBid\\templates\\browsecats.tpl',
      1 => 1370936812,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1015251b6dadea18610-49235281',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'TOP_HTML' => 0,
    'NUM_AUCTIONS' => 0,
    'ID' => 0,
    'SITEURL' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_51b6dadf359db5_19640266',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_51b6dadf359db5_19640266')) {function content_51b6dadf359db5_19640266($_smarty_tpl) {?><div class="tableContent2">
	<div class="titTable2 rounded-top rounded-bottom">
		<a href="browse.php?id=0"><?php echo $_smarty_tpl->getConfigVariable('L_287');?>
</a> : <?php echo $_smarty_tpl->getConfigVariable('CAT_STRING');?>

	</div>
	<div class="table2">
        <?php if ($_smarty_tpl->tpl_vars['TOP_HTML']->value!=''){?>
                <table width="98%" border="0" cellspacing="0" cellpadding="4">
                        <?php echo $_smarty_tpl->tpl_vars['TOP_HTML']->value;?>

                </table>
        <?php }?>
		<br>
        <?php if ($_smarty_tpl->tpl_vars['NUM_AUCTIONS']->value>0){?>
            <?php if ($_smarty_tpl->tpl_vars['ID']->value>0){?>
                    <form name="catsearch" action="?id=<?php echo $_smarty_tpl->tpl_vars['ID']->value;?>
" method="post">
                    <input type="hidden" name="csrftoken" value="<?php echo $_smarty_tpl->getConfigVariable('_CSRFTOKEN');?>
">
                    <table width="98%" border="0" cellspacing="0" cellpadding="4" class="catsearch">
                            <tr>
                                    <td><?php echo $_smarty_tpl->getConfigVariable('L_30_0070');?>
&nbsp;<input type="text" name="catkeyword" size="20">&nbsp;<input type="submit" name="" value="<?php echo $_smarty_tpl->getConfigVariable('L_103');?>
" class="button">
                                    &nbsp;&nbsp;<a href="<?php echo $_smarty_tpl->tpl_vars['SITEURL']->value;?>
adsearch.php"><?php echo $_smarty_tpl->getConfigVariable('L_464');?>
</a></td>
                            </tr>
                    </table>
                    </form>
            <?php }?>
            <?php echo $_smarty_tpl->getSubTemplate ("browse.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 9999, null, array(), 0);?>

        <?php }else{ ?>
            <div class="padding" align="center">
                    <?php echo $_smarty_tpl->getConfigVariable('L_198');?>

            </div>
        <?php }?>
	</div>
</div><?php }} ?>