<?php /* Smarty version Smarty-3.1.13, created on 2013-05-23 11:59:14
         compiled from "..\..\htdocs\WeBid\templates\global_header.tpl" */ ?>
<?php /*%%SmartyHeaderCode:21607519de8722976c6-74669219%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'ab1dc6ded91ab9786e157c1a9a9c260b6d9bb2ab' => 
    array (
      0 => '..\\..\\htdocs\\WeBid\\templates\\global_header.tpl',
      1 => 1369213823,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '21607519de8722976c6-74669219',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'DOCDIR' => 0,
    'PAGE_TITLE' => 0,
    'CHARSET' => 0,
    'DESCRIPTION' => 0,
    'KEYWORDS' => 0,
    'INCURL' => 0,
    'THEME' => 0,
    'L_924' => 0,
    'SITEURL' => 0,
    'L_925' => 0,
    'L_926' => 0,
    'L_927' => 0,
    'L_928' => 0,
    'L_929' => 0,
    'L_930' => 0,
    'L_931' => 0,
    'JSFILES' => 0,
    'LOADCKEDITOR' => 0,
    'LOGO' => 0,
    'BANNER' => 0,
    'B_LOGGED_IN' => 0,
    'L_200' => 0,
    'YOURUSERNAME' => 0,
    'SSLURL' => 0,
    'L_245' => 0,
    'HEADERCOUNTER' => 0,
    'L_166' => 0,
    'B_CAN_SELL' => 0,
    'L_028' => 0,
    'L_622' => 0,
    'L_235' => 0,
    'L_052' => 0,
    'B_BOARDS' => 0,
    'L_5030' => 0,
    'L_148' => 0,
    'SELECTION_BOX' => 0,
    'Q' => 0,
    'L_399' => 0,
    'L_464' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_519de8724cf701_67945823',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_519de8724cf701_67945823')) {function content_519de8724cf701_67945823($_smarty_tpl) {?><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
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

<link rel="alternate" type="application/rss+xml" title="<?php echo $_smarty_tpl->tpl_vars['L_924']->value;?>
" href="<?php echo $_smarty_tpl->tpl_vars['SITEURL']->value;?>
rss.php?feed=1">
<link rel="alternate" type="application/rss+xml" title="<?php echo $_smarty_tpl->tpl_vars['L_925']->value;?>
" href="<?php echo $_smarty_tpl->tpl_vars['SITEURL']->value;?>
rss.php?feed=2">
<link rel="alternate" type="application/rss+xml" title="<?php echo $_smarty_tpl->tpl_vars['L_926']->value;?>
" href="<?php echo $_smarty_tpl->tpl_vars['SITEURL']->value;?>
rss.php?feed=3">
<link rel="alternate" type="application/rss+xml" title="<?php echo $_smarty_tpl->tpl_vars['L_927']->value;?>
" href="<?php echo $_smarty_tpl->tpl_vars['SITEURL']->value;?>
rss.php?feed=4">
<link rel="alternate" type="application/rss+xml" title="<?php echo $_smarty_tpl->tpl_vars['L_928']->value;?>
" href="<?php echo $_smarty_tpl->tpl_vars['SITEURL']->value;?>
rss.php?feed=5">
<link rel="alternate" type="application/rss+xml" title="<?php echo $_smarty_tpl->tpl_vars['L_929']->value;?>
" href="<?php echo $_smarty_tpl->tpl_vars['SITEURL']->value;?>
rss.php?feed=6">
<link rel="alternate" type="application/rss+xml" title="<?php echo $_smarty_tpl->tpl_vars['L_930']->value;?>
" href="<?php echo $_smarty_tpl->tpl_vars['SITEURL']->value;?>
rss.php?feed=7">
<link rel="alternate" type="application/rss+xml" title="<?php echo $_smarty_tpl->tpl_vars['L_931']->value;?>
" href="<?php echo $_smarty_tpl->tpl_vars['SITEURL']->value;?>
rss.php?feed=8">

<script type="text/javascript" src="<?php echo $_smarty_tpl->tpl_vars['INCURL']->value;?>
loader.php?js=<?php echo $_smarty_tpl->tpl_vars['JSFILES']->value;?>
"></script>
<?php if ($_smarty_tpl->tpl_vars['LOADCKEDITOR']->value){?>
	<script type="text/javascript" src="<?php echo $_smarty_tpl->tpl_vars['INCURL']->value;?>
ckeditor/ckeditor.js"></script>
<?php }?>

<script type="text/javascript">
$(document).ready(function() {
	$('a.new-window').click(function(){
		var posY = ($(window).height()-550)/2;
		var posX = ($(window).width())/2;
		window.open(this.href, this.alt, "toolbar=0,location=0,directories=0,scrollbars=1,screenX="+posX+",screenY="+posY+",status=0,menubar=0,width=550,height=550");
		return false;
	});
	var currenttime = '{$ACTUALDATE}';
	var serverdate = new Date(currenttime);
	function padlength(what){
		var output=(what.toString().length==1)? "0"+what : what;
		return output;
	}
	function displaytime(){
		serverdate.setSeconds(serverdate.getSeconds()+1)
		var timestring=padlength(serverdate.getHours())+":"+padlength(serverdate.getMinutes())+":"+padlength(serverdate.getSeconds());
		$("#servertime").html(timestring);
	}
	setInterval(displaytime, 1000);
	$(function() {
		$('#gallery a').lightBox();
	});
});
</script>


</head>
<body>
<div class="wrapper rounded-top rounded-bottom">
	<div class="splitbox">
    	<div class="leftside">
        	<?php echo $_smarty_tpl->tpl_vars['LOGO']->value;?>

        </div>
    	<div class="rightside">
        	<?php echo $_smarty_tpl->tpl_vars['BANNER']->value;?>

        </div>
    </div>
	<div class="counters">
        <span class="leftside"><?php if ($_smarty_tpl->tpl_vars['B_LOGGED_IN']->value){?><?php echo $_smarty_tpl->tpl_vars['L_200']->value;?>
 <?php echo $_smarty_tpl->tpl_vars['YOURUSERNAME']->value;?>
. <a href="<?php echo $_smarty_tpl->tpl_vars['SSLURL']->value;?>
logout.php?"><?php echo $_smarty_tpl->tpl_vars['L_245']->value;?>
</a><?php }?></span>
        <span class="rightside"><?php echo $_smarty_tpl->tpl_vars['HEADERCOUNTER']->value;?>
</span>
	</div>
    <div class="navbar">
        <ul>
            <li><a href="<?php echo $_smarty_tpl->tpl_vars['SITEURL']->value;?>
index.php?"><?php echo $_smarty_tpl->tpl_vars['L_166']->value;?>
</a></li>
<?php if ($_smarty_tpl->tpl_vars['B_CAN_SELL']->value){?>
			<li><a href="<?php echo $_smarty_tpl->tpl_vars['SITEURL']->value;?>
select_category.php?"><?php echo $_smarty_tpl->tpl_vars['L_028']->value;?>
</a></li>
<?php }?>
<?php if ($_smarty_tpl->tpl_vars['B_LOGGED_IN']->value){?>
            <li><a href="<?php echo $_smarty_tpl->tpl_vars['SITEURL']->value;?>
user_menu.php?"><?php echo $_smarty_tpl->tpl_vars['L_622']->value;?>
</a></li>
            <li><a href="<?php echo $_smarty_tpl->tpl_vars['SSLURL']->value;?>
logout.php?"><?php echo $_smarty_tpl->tpl_vars['L_245']->value;?>
</a></li>
<?php }else{ ?>
            <li><a href="<?php echo $_smarty_tpl->tpl_vars['SSLURL']->value;?>
register.php?"><?php echo $_smarty_tpl->tpl_vars['L_235']->value;?>
</a></li>
            <li><a href="<?php echo $_smarty_tpl->tpl_vars['SSLURL']->value;?>
user_login.php?"><?php echo $_smarty_tpl->tpl_vars['L_052']->value;?>
</a></li>
<?php }?>
<?php if ($_smarty_tpl->tpl_vars['B_BOARDS']->value){?>
			<li><a href="<?php echo $_smarty_tpl->tpl_vars['SITEURL']->value;?>
boards.php"><?php echo $_smarty_tpl->tpl_vars['L_5030']->value;?>
</a></li>
<?php }?>
            <li><a href="<?php echo $_smarty_tpl->tpl_vars['SITEURL']->value;?>
faqs.php" alt="faqs" class="new-window"><?php echo $_smarty_tpl->tpl_vars['L_148']->value;?>
</a></li>
        </ul>
    </div>
	<div class="navbar">
    	<div>
            <form name="search" action="<?php echo $_smarty_tpl->tpl_vars['SITEURL']->value;?>
search.php" method="get">
                <?php echo $_smarty_tpl->tpl_vars['SELECTION_BOX']->value;?>

                <input type="text" name="q" size="50" value="<?php echo $_smarty_tpl->tpl_vars['Q']->value;?>
">
                <input type="submit" name="sub" value="<?php echo $_smarty_tpl->tpl_vars['L_399']->value;?>
" class="button">
                <a href="<?php echo $_smarty_tpl->tpl_vars['SITEURL']->value;?>
adsearch.php"><?php echo $_smarty_tpl->tpl_vars['L_464']->value;?>
</a>
            </form>
		</div>
    </div><?php }} ?>