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
$current_page = 'tools';
include '../includes/common.inc.php';
include $include_path . 'functions_admin.php';
include 'loggedin.inc.php';

$actual_version=$system->SETTINGS['version'];
if ($realversion != $actual_version)
{
	$ERR = $ERR_25_0002;
	$realversion = 'Unknown';
}
else {
	// just to proof it uncomment
	//echo" Your version is current";
}

if ($realversion != $system->SETTINGS['version'])
{
	$myversion = '<span style="color:#ff0000;">' . $system->SETTINGS['version'] . '</span>';
	$text = $MSG['30_0211'];
}
else
{
	$myversion = '<span style="color:#00ae00;">' . $system->SETTINGS['version'] . '</span>';
	$text = $MSG['30_0212'];
}

$template->assign_vars(array(
		'ERROR' => (isset($ERR)) ? $ERR : '',
		'SITEURL' => $system->SETTINGS['siteurl'],
		'TEXT' => $text,
		'MYVERSION' => $myversion,
		'REALVERSION' => $realversion
		));

$template->set_filenames(array(
		'body' => 'checkversion.tpl'
		));
$template->display('body');
?>
