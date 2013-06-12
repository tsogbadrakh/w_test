<?php /* Smarty version Smarty-3.1.13, created on 2013-05-23 11:59:14
         compiled from "..\..\htdocs\WeBid\templates\home.tpl" */ ?>
<?php /*%%SmartyHeaderCode:532519de872ad4d40-56180604%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'fe67c8ec6cdef9121c61f121d054a0437e0848c9' => 
    array (
      0 => '..\\..\\htdocs\\WeBid\\templates\\home.tpl',
      1 => 1369297849,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '532519de872ad4d40-56180604',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'L_276' => 0,
    'cat_list' => 0,
    'list' => 0,
    'SITEURL' => 0,
    'L_277' => 0,
    'featured' => 0,
    'ft' => 0,
    'B_HOT_ITEMS' => 0,
    'L_279' => 0,
    'hotitems' => 0,
    'ht' => 0,
    'B_AUC_LAST' => 0,
    'L_278' => 0,
    'auc_last' => 0,
    'alast' => 0,
    'B_AUC_ENDSOON' => 0,
    'L_280' => 0,
    'end_soon' => 0,
    'esoon' => 0,
    'B_MULT_LANGS' => 0,
    'L_2__0001' => 0,
    'FLAGS' => 0,
    'B_LOGIN_BOX' => 0,
    'B_LOGGED_IN' => 0,
    'L_200' => 0,
    'YOURUSERNAME' => 0,
    'L_244' => 0,
    'L_622' => 0,
    'L_245' => 0,
    'L_221' => 0,
    'SSLURL' => 0,
    '_CSRFTOKEN' => 0,
    'L_003' => 0,
    'L_004' => 0,
    'L_25_0085' => 0,
    'L_275' => 0,
    'L_215' => 0,
    'B_HELPBOX' => 0,
    'L_281' => 0,
    'helpbox' => 0,
    'help' => 0,
    'B_NEWS_BOX' => 0,
    'L_282' => 0,
    'newsbox' => 0,
    'nws' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_519de872ce4f18_64103839',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_519de872ce4f18_64103839')) {function content_519de872ce4f18_64103839($_smarty_tpl) {?><table width="100%" border="0" cellpadding="0" cellspacing="0" class="smallpadding">
<tr>
	<td width="22%" valign="top" class="columL">
    <div class="titTable1 rounded-right">
    	<?php echo $_smarty_tpl->tpl_vars['L_276']->value;?>

    </div>
    <div class="smallpadding">
        <ul>
<?php  $_smarty_tpl->tpl_vars['list'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['list']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['cat_list']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['list']->key => $_smarty_tpl->tpl_vars['list']->value){
$_smarty_tpl->tpl_vars['list']->_loop = true;
?>
            <li>
                <span style="background-color:<?php echo $_smarty_tpl->tpl_vars['list']->value['COLOUR'];?>
">
                <a href="browse.php?id=<?php echo $_smarty_tpl->tpl_vars['list']->value['ID'];?>
"><?php echo $_smarty_tpl->tpl_vars['list']->value['IMAGE'];?>
<?php echo $_smarty_tpl->tpl_vars['list']->value['NAME'];?>
</a> <?php echo $_smarty_tpl->tpl_vars['list']->value['CATAUCNUM'];?>

                </span>
            </li>
<?php } ?>
        </ul>
        <a href="<?php echo $_smarty_tpl->tpl_vars['SITEURL']->value;?>
browse.php?id=0"><?php echo $_smarty_tpl->tpl_vars['L_277']->value;?>
</a>
    </div>
</td>
<td valign="top">
    <table width="100%" border="0" cellspacing="0" cellpadding="0" class="maincolum">
    <tr>
        <td class="table2">
        <?php  $_smarty_tpl->tpl_vars['ft'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['ft']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['featured']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['ft']->key => $_smarty_tpl->tpl_vars['ft']->value){
$_smarty_tpl->tpl_vars['ft']->_loop = true;
?>
            <div style="float:left;display:block;width:180px;margin:5px;background-color:#FFFEEE;border:#CCCCCC 1px solid;padding:5px;">
                <div style="display:block;" align="center"><img src="<?php echo $_smarty_tpl->tpl_vars['ft']->value['IMAGE'];?>
"></div>
                <div style="display:block;" align="center"><a href="<?php echo $_smarty_tpl->tpl_vars['SITEURL']->value;?>
item.php?id=<?php echo $_smarty_tpl->tpl_vars['ft']->value['ID'];?>
"><?php echo $_smarty_tpl->tpl_vars['ft']->value['TITLE'];?>
</a><br><?php echo $_smarty_tpl->tpl_vars['ft']->value['BID'];?>
</div>
            </div>
        <?php } ?>
        </td>
    </tr>  
    <?php if ($_smarty_tpl->tpl_vars['B_HOT_ITEMS']->value){?>
    <tr>
        <td class="titTable4"><?php echo $_smarty_tpl->tpl_vars['L_279']->value;?>
</td>
    </tr>
    <tr>
        <td class="table2">
        <?php  $_smarty_tpl->tpl_vars['ht'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['ht']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['hotitems']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['ht']->key => $_smarty_tpl->tpl_vars['ht']->value){
$_smarty_tpl->tpl_vars['ht']->_loop = true;
?>
            <div style="float:left;display:block;width:180px;margin:5px;background-color:#FFFEEE;border:#CCCCCC 1px solid;padding:5px;">
                <div style="display:block;" align="center"><img src="<?php echo $_smarty_tpl->tpl_vars['ht']->value['IMAGE'];?>
"></div>
                <div style="display:block;" align="center"><a href="<?php echo $_smarty_tpl->tpl_vars['SITEURL']->value;?>
item.php?id=<?php echo $_smarty_tpl->tpl_vars['ht']->value['ID'];?>
"><?php echo $_smarty_tpl->tpl_vars['ht']->value['TITLE'];?>
</a><br><?php echo $_smarty_tpl->tpl_vars['ht']->value['BID'];?>
</div>
            </div>
        <?php } ?>
        </td>
    </tr>
    <?php }?>
    <?php if ($_smarty_tpl->tpl_vars['B_AUC_LAST']->value){?>
    <tr>
        <td class="titTable4"><?php echo $_smarty_tpl->tpl_vars['L_278']->value;?>
</td>
    </tr>
    <tr>
        <td class="table2">
        <?php  $_smarty_tpl->tpl_vars['alast'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['alast']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['auc_last']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['alast']->key => $_smarty_tpl->tpl_vars['alast']->value){
$_smarty_tpl->tpl_vars['alast']->_loop = true;
?>
            <p style="display:block;" <?php echo $_smarty_tpl->tpl_vars['auc_last']->value['BGCOLOUR'];?>
><?php echo $_smarty_tpl->tpl_vars['auc_last']->value['DATE'];?>
 <a href="<?php echo $_smarty_tpl->tpl_vars['SITEURL']->value;?>
item.php?id=<?php echo $_smarty_tpl->tpl_vars['alast']->value['ID'];?>
"><?php echo $_smarty_tpl->tpl_vars['alast']->value['TITLE'];?>
</a></p>
        <?php } ?>
        </td>
    </tr>
    <?php }?>
    <?php if ($_smarty_tpl->tpl_vars['B_AUC_ENDSOON']->value){?>
    <tr>
        <td class="titTable4"><?php echo $_smarty_tpl->tpl_vars['L_280']->value;?>
</td>
    </tr>
    <tr>
        <td class="table2">
        <?php  $_smarty_tpl->tpl_vars['esoon'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['esoon']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['end_soon']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['esoon']->key => $_smarty_tpl->tpl_vars['esoon']->value){
$_smarty_tpl->tpl_vars['esoon']->_loop = true;
?>
            <p style="display:block;" <?php echo $_smarty_tpl->tpl_vars['esoon']->value['BGCOLOUR'];?>
><?php echo $_smarty_tpl->tpl_vars['esoon']->value['DATE'];?>
 <a href="<?php echo $_smarty_tpl->tpl_vars['SITEURL']->value;?>
item.php?id=<?php echo $_smarty_tpl->tpl_vars['esoon']->value['ID'];?>
"><?php echo $_smarty_tpl->tpl_vars['esoon']->value['TITLE'];?>
</a></p>
        <?php } ?>
        </td>
    </tr>
    <?php }?>
    </table>
</td>
<td width="20%" valign="top" class="columR">
<?php if ($_smarty_tpl->tpl_vars['B_MULT_LANGS']->value){?>
    <div class="titTable1 rounded-left">
    	<?php echo $_smarty_tpl->tpl_vars['L_2__0001']->value;?>

    </div>
    <div class="smallpadding">
        <?php echo $_smarty_tpl->tpl_vars['FLAGS']->value;?>

    </div>
<?php }?>
<?php if ($_smarty_tpl->tpl_vars['B_LOGIN_BOX']->value){?>
	<?php if ($_smarty_tpl->tpl_vars['B_LOGGED_IN']->value){?>
    <div class="titTable1 rounded-left">
    	<?php echo $_smarty_tpl->tpl_vars['L_200']->value;?>
 <?php echo $_smarty_tpl->tpl_vars['YOURUSERNAME']->value;?>

    </div>
    <div class="smallpadding">
        <ul>
            <li><a href="<?php echo $_smarty_tpl->tpl_vars['SITEURL']->value;?>
edit_data.php?"><?php echo $_smarty_tpl->tpl_vars['L_244']->value;?>
</a></li>
            <li><a href="<?php echo $_smarty_tpl->tpl_vars['SITEURL']->value;?>
user_menu.php"><?php echo $_smarty_tpl->tpl_vars['L_622']->value;?>
</a></li>
            <li><a href="<?php echo $_smarty_tpl->tpl_vars['SITEURL']->value;?>
logout.php"><?php echo $_smarty_tpl->tpl_vars['L_245']->value;?>
</a></li>
        </ul>
    </div>
	<?php }else{ ?>
    <div class="titTable1 rounded-left">
    	<?php echo $_smarty_tpl->tpl_vars['L_221']->value;?>

    </div>
    <div class="smallpadding">
        <form name="login" action="<?php echo $_smarty_tpl->tpl_vars['SSLURL']->value;?>
user_login.php" method="post">
        <input type="hidden" name="csrftoken" value="<?php echo $_smarty_tpl->tpl_vars['_CSRFTOKEN']->value;?>
">
            <table width="100%">
            <tr>
                <td width="25%"><label for="username" title="please enter your username"><?php echo $_smarty_tpl->tpl_vars['L_003']->value;?>
</label></td>
                <td width="75%"><input type="text" name="username" id="username" size="10" maxlength="20"></td>
            </tr>
            <tr>
                <td width="25%"><label for="password" title="please enter your password"><?php echo $_smarty_tpl->tpl_vars['L_004']->value;?>
&nbsp;</label></td>
                <td width="75%"><input type="password" name="password" id="password" size="10" maxlength="20"></td>
            </tr>
            </table>
            <p><input type="checkbox" name="rememberme" id="rememberme" value="1"><label for="rememberme">&nbsp;<?php echo $_smarty_tpl->tpl_vars['L_25_0085']->value;?>
</label></p>
            <p align="center"><input type="submit" name="action" value="<?php echo $_smarty_tpl->tpl_vars['L_275']->value;?>
" class="button"></p>
            <p><a href="<?php echo $_smarty_tpl->tpl_vars['SITEURL']->value;?>
forgotpasswd.php"><?php echo $_smarty_tpl->tpl_vars['L_215']->value;?>
</a></p>
        </form>
    </div>
	<?php }?>
<?php }?>
<?php if ($_smarty_tpl->tpl_vars['B_HELPBOX']->value){?>
    <div class="titTable1 rounded-left">
    	<?php echo $_smarty_tpl->tpl_vars['L_281']->value;?>

    </div>
    <div class="smallpadding">
        <ul>
        <?php  $_smarty_tpl->tpl_vars['help'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['help']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['helpbox']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['help']->key => $_smarty_tpl->tpl_vars['help']->value){
$_smarty_tpl->tpl_vars['help']->_loop = true;
?>
            <li><a href="<?php echo $_smarty_tpl->tpl_vars['SITEURL']->value;?>
viewfaqs.php?cat=<?php echo $_smarty_tpl->tpl_vars['help']->value['ID'];?>
" alt="faqs"  class="new-window"><?php echo $_smarty_tpl->tpl_vars['help']->value['TITLE'];?>
</a></li>
        <?php } ?>
        </ul>
    </div>
<?php }?>
<?php if ($_smarty_tpl->tpl_vars['B_NEWS_BOX']->value){?>
    <div class="titTable1 rounded-left">
    	<?php echo $_smarty_tpl->tpl_vars['L_282']->value;?>

    </div>
    <div class="smallpadding">
        <ul>
        <?php  $_smarty_tpl->tpl_vars['nws'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['nws']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['newsbox']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['nws']->key => $_smarty_tpl->tpl_vars['nws']->value){
$_smarty_tpl->tpl_vars['nws']->_loop = true;
?>
            <li><?php echo $_smarty_tpl->tpl_vars['newsbox']->value['DATE'];?>
 - <a href="viewnew.php?id=<?php echo $_smarty_tpl->tpl_vars['nws']->value['ID'];?>
"><?php echo $_smarty_tpl->tpl_vars['nws']->value['TITLE'];?>
</a></li>
        <?php } ?>
        </ul>
    </div>   
<?php }?>
	</td>
</tr>
</table><?php }} ?>