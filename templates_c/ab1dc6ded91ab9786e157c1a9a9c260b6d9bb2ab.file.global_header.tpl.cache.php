<?php /* Smarty version Smarty-3.1.13, created on 2013-06-10 11:04:47
         compiled from "..\..\htdocs\WeBid\templates\global_header.tpl" */ ?>
<?php /*%%SmartyHeaderCode:30660519c76b90bd281-63201455%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'ab1dc6ded91ab9786e157c1a9a9c260b6d9bb2ab' => 
    array (
      0 => '..\\..\\htdocs\\WeBid\\templates\\global_header.tpl',
      1 => 1370854601,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '30660519c76b90bd281-63201455',
  'function' => 
  array (
  ),
  'cache_lifetime' => 3600,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_519c76b94b7202_45127525',
  'variables' => 
  array (
    'DOCDIR' => 0,
    'PAGE_TITLE' => 0,
    'CHARSET' => 0,
    'DESCRIPTION' => 0,
    'KEYWORDS' => 0,
    'INCURL' => 0,
    'THEME' => 0,
    'SITEURL' => 0,
    'JSFILES' => 0,
    'LOADCKEDITOR' => 0,
    'LOGO' => 0,
    'B_LOGGED_IN' => 0,
    'YOURUSERNAME' => 0,
    'B_BOARDS' => 0,
    'B_CAN_SELL' => 0,
    'SELECTION_BOX' => 0,
    'Q' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_519c76b94b7202_45127525')) {function content_519c76b94b7202_45127525($_smarty_tpl) {?><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html lang="en" dir="<?php echo $_smarty_tpl->tpl_vars['DOCDIR']->value;?>
">
<head>
<title><?php echo $_smarty_tpl->tpl_vars['PAGE_TITLE']->value;?>
</title>
<meta http-equiv="Content-Type" content="text/html; charset=<?php echo $_smarty_tpl->tpl_vars['CHARSET']->value;?>
">
<meta name="description" content="<?php echo $_smarty_tpl->tpl_vars['DESCRIPTION']->value;?>
">
<meta name="keywords" content="<?php echo $_smarty_tpl->tpl_vars['KEYWORDS']->value;?>
">
<meta name="generator" content="WeBid">

<link rel="stylesheet" type="text/css" href="<?php echo $_smarty_tpl->tpl_vars['INCURL']->value;?>
themes/<?php echo $_smarty_tpl->tpl_vars['THEME']->value;?>
/style.css">
<link rel="stylesheet" type="text/css" href="<?php echo $_smarty_tpl->tpl_vars['INCURL']->value;?>
themes/<?php echo $_smarty_tpl->tpl_vars['THEME']->value;?>
/jquery.lightbox.css" media="screen">
<link rel="stylesheet" type="text/css" href="<?php echo $_smarty_tpl->tpl_vars['INCURL']->value;?>
includes/calendar.css">
    
<link rel="alternate" type="application/rss+xml" title="<?php echo $_smarty_tpl->getConfigVariable('L_924');?>
" href="<?php echo $_smarty_tpl->tpl_vars['SITEURL']->value;?>
rss.php?feed=1">
<link rel="alternate" type="application/rss+xml" title="<?php echo $_smarty_tpl->getConfigVariable('L_925');?>
" href="<?php echo $_smarty_tpl->tpl_vars['SITEURL']->value;?>
rss.php?feed=2">
<link rel="alternate" type="application/rss+xml" title="<?php echo $_smarty_tpl->getConfigVariable('L_926');?>
" href="<?php echo $_smarty_tpl->tpl_vars['SITEURL']->value;?>
rss.php?feed=3">
<link rel="alternate" type="application/rss+xml" title="<?php echo $_smarty_tpl->getConfigVariable('L_927');?>
" href="<?php echo $_smarty_tpl->tpl_vars['SITEURL']->value;?>
rss.php?feed=4">
<link rel="alternate" type="application/rss+xml" title="<?php echo $_smarty_tpl->getConfigVariable('L_928');?>
" href="<?php echo $_smarty_tpl->tpl_vars['SITEURL']->value;?>
rss.php?feed=5">
<link rel="alternate" type="application/rss+xml" title="<?php echo $_smarty_tpl->getConfigVariable('L_929');?>
" href="<?php echo $_smarty_tpl->tpl_vars['SITEURL']->value;?>
rss.php?feed=6">
<link rel="alternate" type="application/rss+xml" title="<?php echo $_smarty_tpl->getConfigVariable('L_930');?>
" href="<?php echo $_smarty_tpl->tpl_vars['SITEURL']->value;?>
rss.php?feed=7">
<link rel="alternate" type="application/rss+xml" title="<?php echo $_smarty_tpl->getConfigVariable('L_931');?>
" href="<?php echo $_smarty_tpl->tpl_vars['SITEURL']->value;?>
rss.php?feed=8">

<script type="text/javascript" src="<?php echo $_smarty_tpl->tpl_vars['INCURL']->value;?>
loader.php?js=<?php echo $_smarty_tpl->tpl_vars['JSFILES']->value;?>
"></script>
<script type="text/javascript" src="<?php echo $_smarty_tpl->tpl_vars['INCURL']->value;?>
js/jquery-all.js"></script>
<script type="text/javascript" src="<?php echo $_smarty_tpl->tpl_vars['INCURL']->value;?>
js/jcore.js"></script>
<?php if ($_smarty_tpl->tpl_vars['LOADCKEDITOR']->value){?>
    <script type="text/javascript" src="<?php echo $_smarty_tpl->tpl_vars['INCURL']->value;?>
ckeditor/ckeditor.js"></script>
<?php }?>
<script type="text/javascript">

</script>

</head>
<body class="wb-body">
<div class="wb-header">
    <div class="wb-top">
        <div class="wb-top-logo"><?php echo $_smarty_tpl->tpl_vars['LOGO']->value;?>
</div>
        <div class="wb-top-login" style="display: block;">
                <?php if ($_smarty_tpl->tpl_vars['B_LOGGED_IN']->value){?>
                    <a class="gh-ua" id="gh-ug" href="#"><?php echo $_smarty_tpl->getConfigVariable('L_200');?>
, <strong><?php echo $_smarty_tpl->tpl_vars['YOURUSERNAME']->value;?>
</strong>!
                    <img border="0" id="gh-uga" src="http://p.ebaystatic.com/aw/pics/s.gif" alt=""></a>
                <?php }else{ ?>
                    
                    <div name="uLogin" class="link-btn wb-login-btn"><?php echo $_smarty_tpl->getConfigVariable('L_052');?>
</div>
                <?php }?>
                <?php if ($_smarty_tpl->tpl_vars['B_LOGGED_IN']->value){?>
                    | 
                    <div name="uLogout" class="link-btn wb-logout-btn"><?php echo $_smarty_tpl->getConfigVariable('L_245');?>
</div>
                <?php }else{ ?>
                    | 
                    <div name="uRegister" class="link-btn wb-reg-btn"><?php echo $_smarty_tpl->getConfigVariable('L_235');?>
</div>
                <?php }?>
        </div>
        <div class="wb-top-right">
               <?php if ($_smarty_tpl->tpl_vars['B_BOARDS']->value){?>
                   <div class="wb-rmenu-caption">
                       <div class="wb-link-icon wb-icn-msg-board"></div>
                       <div class="link-btn wb-link-name" name="msgboard"><?php echo $_smarty_tpl->getConfigVariable('L_5030');?>
</div>
                   </div>
               <?php }?>
               <?php if ($_smarty_tpl->tpl_vars['B_LOGGED_IN']->value){?> 
                   <div class="wb-rmenu-caption">
                       <div class="wb-link-icon wb-icn-cpanel"></div>
                       <div class="link-btn wb-link-name" name="ctrlpanel"><?php echo $_smarty_tpl->getConfigVariable('L_622');?>
</div>
                   </div>
                   <div class="wb-rmenu-caption">
                       <div class="wb-link-icon wb-icn-help"></div>
                       <div class="link-btn wb-link-name" name="userhelp"><?php echo $_smarty_tpl->getConfigVariable('L_148');?>
</div>
                   </div>
               <?php }?>
               <?php if ($_smarty_tpl->tpl_vars['B_CAN_SELL']->value){?>
                    <div class="wb-rmenu-caption">
                       <div class="wb-link-icon wb-icn-sell"></div>
                       <div class="link-btn wb-link-name" name="sellitem"><?php echo $_smarty_tpl->getConfigVariable('L_028');?>
</div>
                    </div>
               <?php }?>
        </div>
    </div>
    <table class="wb-srch-pnl">
    <tbody>
        <tr>
            <td class="wb-td-srch">
                <form class="wb-srch-frm" id="wb-sfrm">
                    <table>
                            <tbody>
                                    <tr>
                                        <td>
                                            <div id="wb-sel-box">
                                                <select title="Select a category for search" class="wb-srch-sel" size="1" name="_catid"><?php echo $_smarty_tpl->tpl_vars['SELECTION_BOX']->value;?>
</select>
                                            </div>
                                        </td>
                                        <td>
                                            <div id="wb-srch-box">
                                                <label for="gh-ac" class="wb-chk-srch">Enter your search keyword</label>
                                                <input type="text" value="<?php echo $_smarty_tpl->tpl_vars['Q']->value;?>
" autofocus="" class="" size="50" 
                                                       maxlength="300" placeholder="Search... " id="wb-srch-in" name="_kwd" autocomplete="off">
                                            </div>
                                        </td>
                                        <td> 
                                            <button type="button" name="SearchItem" class="wb-btn" id="wb-srch-btn" value="<?php echo $_smarty_tpl->getConfigVariable('L_399');?>
" style="display: inline-block;">
                                        </td>
                                        <td>
                                            <div>
                                                <a href="<?php echo $_smarty_tpl->tpl_vars['SITEURL']->value;?>
adsearch.php" class="" id="wb-srch-adv" name="advSearch"><?php echo $_smarty_tpl->getConfigVariable('L_464');?>
</a>
                                            </div>
                                        </td>
                                    </tr>
                            </tbody>
                    </table>
                    <input type="hidden" value="MAIN" name="_from">
                </form>
            </td>
        </tr>
    </tbody>
</table>
</div><?php }} ?>