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
  'cache_lifetime' => 3600,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_51b6d6f12d1906_71687792',
  'has_nocache_code' => false,
),true); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_51b6d6f12d1906_71687792')) {function content_51b6d6f12d1906_71687792($_smarty_tpl) {?><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html lang="en" dir="ltr">
<head>
<title>WeBid</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="description" content="">
<meta name="keywords" content="">
<meta name="generator" content="WeBid">

<link rel="stylesheet" type="text/css" href="http://localhost/WeBid/themes/default/style.css">
<link rel="stylesheet" type="text/css" href="http://localhost/WeBid/themes/default/jquery.lightbox.css" media="screen">
<link rel="stylesheet" type="text/css" href="http://localhost/WeBid/includes/calendar.css">
    
<link rel="alternate" type="application/rss+xml" title="Just Listed" href="http://localhost/WeBid/rss.php?feed=1">
<link rel="alternate" type="application/rss+xml" title="Closing Soon" href="http://localhost/WeBid/rss.php?feed=2">
<link rel="alternate" type="application/rss+xml" title="Big Ticket" href="http://localhost/WeBid/rss.php?feed=3">
<link rel="alternate" type="application/rss+xml" title="Very Expensive" href="http://localhost/WeBid/rss.php?feed=4">
<link rel="alternate" type="application/rss+xml" title="Cheap Items" href="http://localhost/WeBid/rss.php?feed=5">
<link rel="alternate" type="application/rss+xml" title="Popular Items" href="http://localhost/WeBid/rss.php?feed=6">
<link rel="alternate" type="application/rss+xml" title="Hot Items" href="http://localhost/WeBid/rss.php?feed=7">
<link rel="alternate" type="application/rss+xml" title="Buy Now" href="http://localhost/WeBid/rss.php?feed=8">

<script type="text/javascript" src="http://localhost/WeBid/loader.php?js=js/jquery.js;js/jquery.lightbox.js;"></script>
<script type="text/javascript" src="http://localhost/WeBid/js/jquery-all.js"></script>
<script type="text/javascript" src="http://localhost/WeBid/js/jcore.js"></script>
<script type="text/javascript">

</script>

</head>
<body class="wb-body">
<div class="wb-header">
    <div class="wb-top">
        <div class="wb-top-logo"><a href="http://localhost/WeBid/index.php?"><img src="http://localhost/WeBid/themes/default/logo.gif" border="0" alt="WeBid"></a></div>
        <div class="wb-top-login" style="display: block;">
                                    
                    <div name="uLogin" class="link-btn wb-login-btn">Login</div>
                                                    | 
                    <div name="uRegister" class="link-btn wb-reg-btn">Register now</div>
                        </div>
        <div class="wb-top-right">
                                  <div class="wb-rmenu-caption">
                       <div class="wb-link-icon wb-icn-msg-board"></div>
                       <div class="link-btn wb-link-name" name="msgboard">Message Boards</div>
                   </div>
                                                                 <div class="wb-rmenu-caption">
                       <div class="wb-link-icon wb-icn-sell"></div>
                       <div class="link-btn wb-link-name" name="sellitem">Sell an item</div>
                    </div>
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
                                                <select title="Select a category for search" class="wb-srch-sel" size="1" name="_catid">	<option value="0">All categories</option>
	<option value="0">----------------------</option>
	<option value="2">Art & Antiques</option>
	<option value="29">Books</option>
	<option value="68">Clothing & Accessories</option>
	<option value="72">Coins & Stamps</option>
	<option value="75">Collectibles</option>
	<option value="113">Comics, Cards & Science Fiction</option>
	<option value="122">Computers & Software</option>
	<option value="127">Electronics & Photography</option>
	<option value="133">Home & Garden</option>
	<option value="143">Movies & Video</option>
	<option value="150">Music</option>
	<option value="157">Office & Business</option>
	<option value="162">Other Goods & Services</option>
	<option value="170">Sports & Recreation</option>
	<option value="174">Toys & Games</option>
</select>
                                            </div>
                                        </td>
                                        <td>
                                            <div id="wb-srch-box">
                                                <label for="gh-ac" class="wb-chk-srch">Enter your search keyword</label>
                                                <input type="text" value="" autofocus="" class="" size="50" 
                                                       maxlength="300" placeholder="Search... " id="wb-srch-in" name="_kwd" autocomplete="off">
                                            </div>
                                        </td>
                                        <td> 
                                            <button type="button" name="SearchItem" class="wb-btn" id="wb-srch-btn" value="Search for it!" style="display: inline-block;">
                                        </td>
                                        <td>
                                            <div>
                                                <a href="http://localhost/WeBid/adsearch.php" class="" id="wb-srch-adv" name="advSearch">Advanced Search</a>
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