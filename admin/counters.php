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
$current_page = 'settings';
include '../includes/common.inc.php';
include $include_path . 'functions_admin.php';
include 'loggedin.inc.php';

unset($ERR);

if (isset($_POST['action']) && $_POST['action'] == 'update')
{
	if ($_POST['auctions'] != 'y') $_POST['auctions'] = 'n';
	if ($_POST['users'] != 'y') $_POST['users'] = 'n';
	if ($_POST['online'] != 'y') $_POST['online'] = 'n';
	// Update database
	$query = "UPDATE " . $DBPrefix . "settings SET
			  counter_auctions = '" . $_POST['auctions'] . "',
			  counter_users = '" . $_POST['users'] . "',
			  counter_online = '" . $_POST['online'] . "'";
	$system->check_mysql(mysql_query($query), $query, __LINE__, __FILE__);
	$system->SETTINGS['counter_auctions'] = $_POST['auctions'];
	$system->SETTINGS['counter_users'] = $_POST['users'];
	$system->SETTINGS['counter_online'] = $_POST['online'];
	$ERR = $MGS_2__0063;
}

loadblock($MGS_2__0062, $MGS_2__0058);
loadblock($MGS_2__0060, '', 'checkbox', 'auctions', $system->SETTINGS['counter_auctions']);
loadblock($MGS_2__0061, '', 'checkbox', 'users', $system->SETTINGS['counter_users']);
loadblock($MGS_2__0059, '', 'checkbox', 'online', $system->SETTINGS['counter_online']);

$template->assign_vars(array(
		'ERROR' => (isset($ERR)) ? $ERR : '',
		'SITEURL' => $system->SETTINGS['siteurl'],
		'TYPENAME' => $MSG['25_0008'],
		'PAGENAME' => $MSG['2__0057']
		));

$template->set_filenames(array(
		'body' => 'adminpages.tpl'
		));
$template->display('body');
?>
