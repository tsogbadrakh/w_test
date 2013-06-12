<?php
/***************************************************************************
 *   copyright				: (C) 2008, 2009 WeBid
 *   site					: http://www.webidsupport.com/
 ***************************************************************************/

/***************************************************************************
 *   This program is free software; you can redistribute it and/or modify
 *   it under the terms of the GNU General Public License as published by
 *   the Free Software Foundation; either version 2 of the License, or
 *   (at your option) any later version. Although none of the code may be
 *   sold. If you have been sold this script, get a refund.
 ***************************************************************************/

define('InAdmin', 1);
include "../includes/common.inc.php";
include $include_path . 'functions_admin.php';

$template->assign_vars(array(
		'SITEURL' => $system->SETTINGS['siteurl'],
		'B_ADMINLOGIN' => (!checklogin())
		));

$template->set_filenames(array(
		'body' => 'adminbar.tpl'
		));
$template->display('body');
?>