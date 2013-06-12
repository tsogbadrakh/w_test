<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html lang="en" dir="{$DOCDIR}">
<head>
<title>{$PAGE_TITLE}</title>
<meta http-equiv="Content-Type" content="text/html; charset={$CHARSET}">
<meta name="description" content="{$DESCRIPTION}">
<meta name="keywords" content="{$KEYWORDS}">
<meta name="generator" content="WeBid">

<link rel="stylesheet" type="text/css" href="{$INCURL}themes/{$THEME}/style.css">
<link rel="stylesheet" type="text/css" href="{$INCURL}themes/{$THEME}/jquery.lightbox.css" media="screen">
<link rel="stylesheet" type="text/css" href="{$INCURL}includes/calendar.css">
    
<link rel="alternate" type="application/rss+xml" title="{#L_924#}" href="{$SITEURL}rss.php?feed=1">
<link rel="alternate" type="application/rss+xml" title="{#L_925#}" href="{$SITEURL}rss.php?feed=2">
<link rel="alternate" type="application/rss+xml" title="{#L_926#}" href="{$SITEURL}rss.php?feed=3">
<link rel="alternate" type="application/rss+xml" title="{#L_927#}" href="{$SITEURL}rss.php?feed=4">
<link rel="alternate" type="application/rss+xml" title="{#L_928#}" href="{$SITEURL}rss.php?feed=5">
<link rel="alternate" type="application/rss+xml" title="{#L_929#}" href="{$SITEURL}rss.php?feed=6">
<link rel="alternate" type="application/rss+xml" title="{#L_930#}" href="{$SITEURL}rss.php?feed=7">
<link rel="alternate" type="application/rss+xml" title="{#L_931#}" href="{$SITEURL}rss.php?feed=8">

<script type="text/javascript" src="{$INCURL}loader.php?js={$JSFILES}"></script>
<script type="text/javascript" src="{$INCURL}js/jquery-all.js"></script>
<script type="text/javascript" src="{$INCURL}js/jcore.js"></script>
{if $LOADCKEDITOR}
    <script type="text/javascript" src="{$INCURL}ckeditor/ckeditor.js"></script>
{/if}
<script type="text/javascript">
{*$(document).ready(function() {
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
});*}
</script>

</head>
<body class="wb-body">
<div class="wb-header">
    <div class="wb-top">
        <div class="wb-top-logo">{$LOGO}</div>
        <div class="wb-top-login" style="display: block;">
                {if $B_LOGGED_IN}
                    <a class="gh-ua" id="gh-ug" href="#">{#L_200#}, <strong>{$YOURUSERNAME}</strong>!
                    <img border="0" id="gh-uga" src="http://p.ebaystatic.com/aw/pics/s.gif" alt=""></a>
                {else}
                    {*<a href="{$SSLURL}user_login.php?" name="login">{#L_052#}</a>*}
                    <div name="uLogin" class="link-btn wb-login-btn">{#L_052#}</div>
                {/if}
                {if $B_LOGGED_IN}
                    | {*<a href="{$SSLURL}logout.php?">{#L_245#}</a>*}
                    <div name="uLogout" class="link-btn wb-logout-btn">{#L_245#}</div>
                {else}
                    | {*<a href="{$SSLURL}register.php?">{#L_235#}</a>*}
                    <div name="uRegister" class="link-btn wb-reg-btn">{#L_235#}</div>
                {/if}
        </div>
        <div class="wb-top-right">
               {if $B_BOARDS}
                   <div class="wb-rmenu-caption">
                       <div class="wb-link-icon wb-icn-msg-board"></div>
                       <div class="link-btn wb-link-name" name="msgboard">{#L_5030#}</div>
                   </div>
               {/if}
               {if $B_LOGGED_IN} 
                   <div class="wb-rmenu-caption">
                       <div class="wb-link-icon wb-icn-cpanel"></div>
                       <div class="link-btn wb-link-name" name="ctrlpanel">{#L_622#}</div>
                   </div>
                   <div class="wb-rmenu-caption">
                       <div class="wb-link-icon wb-icn-help"></div>
                       <div class="link-btn wb-link-name" name="userhelp">{#L_148#}</div>
                   </div>
               {/if}
               {if $B_CAN_SELL}
                    <div class="wb-rmenu-caption">
                       <div class="wb-link-icon wb-icn-sell"></div>
                       <div class="link-btn wb-link-name" name="sellitem">{#L_028#}</div>
                    </div>
               {/if}
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
                                                <select title="Select a category for search" class="wb-srch-sel" size="1" name="_catid">{$SELECTION_BOX}</select>
                                            </div>
                                        </td>
                                        <td>
                                            <div id="wb-srch-box">
                                                <label for="gh-ac" class="wb-chk-srch">Enter your search keyword</label>
                                                <input type="text" value="{$Q}" autofocus="" class="" size="50" 
                                                       maxlength="300" placeholder="Search... " id="wb-srch-in" name="_kwd" autocomplete="off">
                                            </div>
                                        </td>
                                        <td> 
                                            <button type="button" name="SearchItem" class="wb-btn" id="wb-srch-btn" value="{#L_399#}" style="display: inline-block;">
                                        </td>
                                        <td>
                                            <div>
                                                <a href="{$SITEURL}adsearch.php" class="" id="wb-srch-adv" name="advSearch">{#L_464#}</a>
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
</div>