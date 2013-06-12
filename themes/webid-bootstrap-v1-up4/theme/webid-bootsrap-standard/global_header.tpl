<!DOCTYPE html>
<html lang="en">
<head>
<title>{PAGE_TITLE}</title>
<meta http-equiv="Content-Type" content="text/html; charset={CHARSET}">
<meta name="description" content="{DESCRIPTION}">
<meta name="keywords" content="{KEYWORDS}">
<meta name="generator" content="WeBid">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="{INCURL}themes/{THEME}/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="{INCURL}themes/{THEME}/css/bootstrap-responsive.css" >
<link rel="stylesheet" type="text/css" href="{INCURL}themes/{THEME}/css/style.css">
<link rel="stylesheet" type="text/css" href="{INCURL}themes/{THEME}/css/jquery.lightbox.css" media="screen">
<link rel="stylesheet" href="http://code.jquery.com/ui/1.9.2/themes/base/jquery-ui.css" />
<link rel="stylesheet" type="text/css" href="{INCURL}includes/calendar.css">
<link rel="alternate" type="application/rss+xml" title="{L_924}" href="{SITEURL}rss.php?feed=1">
<link rel="alternate" type="application/rss+xml" title="{L_925}" href="{SITEURL}rss.php?feed=2">
<link rel="alternate" type="application/rss+xml" title="{L_926}" href="{SITEURL}rss.php?feed=3">
<link rel="alternate" type="application/rss+xml" title="{L_927}" href="{SITEURL}rss.php?feed=4">
<link rel="alternate" type="application/rss+xml" title="{L_928}" href="{SITEURL}rss.php?feed=5">
<link rel="alternate" type="application/rss+xml" title="{L_929}" href="{SITEURL}rss.php?feed=6">
<link rel="alternate" type="application/rss+xml" title="{L_930}" href="{SITEURL}rss.php?feed=7">
<link rel="alternate" type="application/rss+xml" title="{L_931}" href="{SITEURL}rss.php?feed=8">
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script type="text/javascript" src="{INCURL}loader.php?js={JSFILES}"></script>
<!-- IF LOADCKEDITOR -->
<script type="text/javascript" src="{INCURL}ckeditor/ckeditor.js"></script>
<!-- ENDIF -->
<script type="text/javascript" src="{INCURL}themes/{THEME}/js/bootstrap.min.js"></script>
<script src="http://code.jquery.com/ui/1.9.2/jquery-ui.js"></script>
</head>
<body>
<div class="navbar navbar-fixed-top hidden-desktop">
  <div class="navbar-inner">
    <ul class="nav pull-left" style="margin:0;">
      <li class="active" style="cursor: pointer"><a style="cursor: pointer" href="{SITEURL}index.php?"><i class="icon-home"></i></a></li>
      <li class="active" style="cursor: pointer; margin-left:2px"><a style="cursor: pointer" href="{SITEURL}browse.php?"><i class="icon-list"></i></a></li>
    </ul>
    <ul class="nav pull-right">
      <!-- IF B_LOGGED_IN -->
      <li><a href="{SITEURL}user_menu.php?cptab=summary"><i class="icon-user"></i> {L_25_0081}</a></li>
      </li>
      <li><a href="{SSLURL}logout.php?">{L_245}</a></li>
      <!-- ELSE -->
      <li><a href="{SSLURL}register.php?">{L_235}</a></li>
      <li class="divider-vertical"></li>
      <li><a href="{SSLURL}user_login.php?"><i class=" icon-share-alt"></i> {L_052}</a></li>
      <!-- ENDIF -->
    </ul>
  </div>
</div>
<div class="container">
<div class="row">
  <div class="span12" style="position:relative">
    <div class="row">
      <div class="span4 logo-holder">
        <h2>{LOGO}</h2>
      </div>
      <div class="span8">
        <div class="hidden-phone" style="float:right;margin-top:5px; text-align:right">{BANNER}</div>
      </div>
    </div>
  </div>
</div>
<div class="navbar">
  <div class="navbar-inner">
    <div class="container"> <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse"> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </a>
      <div class="nav-collapse collapse">
        <ul class="nav main-navigation">
          <!-- IF B_CAN_SELL -->
          <li style="cursor: pointer"><a style="cursor: pointer" href="{SITEURL}index.php?"><i class="icon-home"></i></a></li>
          <li class="divider-vertical"></li>
          <li><a href="{SITEURL}browse.php?"> {L_104}</a></li>
          <li class="divider-vertical"></li>
          <li><a href="{SITEURL}select_category.php?">{L_028}</a></li>
          <!-- ENDIF -->  
          <li class="divider-vertical"></li>
          <li class="dropdown"> <a href="#" class="dropdown-toggle" data-toggle="dropdown">{L_276} <b class="caret"></b></a>
            <ul class="dropdown-menu categories-dropdown">
              <div class="span9">
                <div class="row">
                  <div class="span3 hidden-desktop">
                    <div class="single-cat-dopdown "> <a href="{SITEURL}browse.php?id=0">{L_277}</a></div>
                  </div>
                  <!-- BEGIN cat_list_drop-->
                  <div class="span3">
                    <div class="single-cat-dopdown"> <a href="browse.php?id={cat_list.ID}">{cat_list_drop.IMAGE}{cat_list_drop.NAME}</a> </div>
                  </div>
                  <!-- END cat_list_drop -->
                </div>
              </div>
            </ul>
          </li>
          <!-- IF B_LOGGED_IN -->
          <li class="divider-vertical"></li>
          <li class="dropdown hidden-phone hidden-tablet"> <a href="{SITEURL}user_menu.php?cptab=summary">{L_25_0081}</a></li>
          <li class="divider-vertical"></li>
          </li>
          <li><a href="{SSLURL}logout.php?">{L_245}</a></li>
          <!-- ELSE -->
          <li class="divider-vertical"></li>
          <li><a href="{SSLURL}register.php?">{L_235}</a></li>
          <li class="divider-vertical"></li>
          <li><a href="{SSLURL}user_login.php?">{L_052}</a></li>
          <!-- ENDIF -->
          <li class="divider-vertical hidden-phone"></li>
          <form class="navbar-form pull-right" action="{SITEURL}search.php" method="get">
            <input type="text" class="input-medium" name="q" size="50" value="{Q}">
            <button type="submit" class="btn btn-small" name="sub" value="{L_399}" >Search</button>
          </form>
        </ul>
      </div>
    </div>
  </div>
</div>