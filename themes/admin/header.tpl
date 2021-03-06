<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html dir="{DOCDIR}">
<head>
	<title>WeBid Administration back-end</title>
	<meta http-equiv="content-type" content="text/html; charset={CHARSET}" />
	<link rel="stylesheet" type="text/css" href="{SITEURL}themes/admin/style.css" />

    <!--[if IE]>
    <style type="text/css">
    .clearfix {
        zoom: 1;
        display: block;
    }
    </style>
    <![endif]-->
	<script type="text/javascript" src="{SITEURL}loader.php?js=js/jquery.js{EXTRAJS}"></script>
	<script type="text/javascript" src="{SITEURL}ckeditor/ckeditor.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			$('a.new-window').click(function(){
				window.open(this.href, this.alt, "toolbar=0,location=0,directories=0,scrollbars=1,screenX=100,screenY=100,status=0,menubar=0,resizable=0,width=550,height=550");
				return false;
			});
			$(".selectall").click(function() {
				var checked_status = this.checked;
				var checkbox_name = this.value;
				$("input[name=\"" + checkbox_name + "[]\"]").each(function() {
					this.checked = checked_status;
				});
		});
	});
	</script>

</head>

<body id="{CURRENT_PAGE}">

<div id="header" style="height:25px; margin:25px 50px">
	<h1 style="float:left; width: 250px; font-size: 250%; margin:0; padding:0;">WeBid</h1>
    <p style="float:right; width: 250px; text-align: right; margin:5px 0 0 0; line-height: 15px;">
<!-- BEGIN langs -->
	<!-- IF ! langs.B_DEFAULT -->
        <a href="index.php?lan={langs.LANG}"><img src="{SITEURL}includes/flags/{langs.LANG}.gif"></a>
	<!-- ENDIF -->
<!-- END langs -->
        {L_592} {ADMIN_USER} | <a href="editadminuser.php?id={ADMIN_ID}">{L_5142}</a> | <a href="logout.php">{L_245}</a><br /><small>{L_559}: {LAST_LOGIN}</small>
    </p>
</div>

<div class="wrapper" style="margin:40px 50px;">
    <ul id="tabnav">
        <li class="home"><a href="index.php">{L_166}</a></li>
        <li class="settings"><a href="settings.php">{L_5142}</a></li>
        <li class="fees"><a href="fees.php">{L_25_0012}</a></li>
        <li class="interface"><a href="theme.php">{L_25_0009}</a></li>
        <li class="banners"><a href="managebanners.php">{L_25_0011}</a></li>
        <li class="users"><a href="listusers.php">{L_25_0010}</a></li>
        <li class="auctions"><a href="listauctions.php">{L_239}</a></li>
        <li class="contents"><a href="news.php">{L_25_0018}</a></li>
        <li class="stats"><a href="viewaccessstats.php">{L_25_0023}</a></li>
        <li class="tools"><a href="errorlog.php">{L_5436}</a></li>
        <li class="help"><a href="help.php" class="new-window" alt="{L_148}">{L_148}</a></li>
    </ul>
    <div id="wrapper" class="clearfix">