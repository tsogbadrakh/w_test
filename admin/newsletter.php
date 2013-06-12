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
$current_page = 'users';
include "../includes/common.inc.php";
include $include_path . 'functions_admin.php';
include 'loggedin.inc.php';
include $main_path . 'ckeditor/ckeditor.php';

unset($ERR);

$subject = (isset($_POST['subject'])) ? stripslashes($_POST['subject']) : '';
$content = (isset($_POST['content'])) ? stripslashes($_POST['content']) : '';

if (isset($_POST['action']) && $_POST['action'] == 'update')
{
	if (empty($subject) || empty($content))
	{
		$ERR = $ERR_5014;
	}
	else
	{
		$COUNTER = 0;
		$query = "SELECT email FROM " . $DBPrefix . "users WHERE nletter = 1";
		switch($_POST['usersfilter'])
		{
			case 'active':
				$query .= ' AND suspended = 0';
				break;
			case 'admin':
				$query .= ' AND suspended = 1';
				break;
			case 'fee':
				$query .= ' AND suspended = 9';
				break;
			case 'confirmed':
				$query .= ' AND suspended = 8';
				break;
		}
		$headers = 'From:' . $system->SETTINGS['sitename'] . ' <' . $system->SETTINGS['adminmail'] . '>' . "\n" . 'Content-Type: text/html; charset=' . $CHARSET;
		$res = mysql_query($query);
		$system->check_mysql($res, $query, __LINE__, __FILE__);
		while ($row = mysql_fetch_assoc($res))
		{
			if (mail($row['email'], $subject, $content, $headers))
			{
				$COUNTER++;
			}
		}
		$ERR = $COUNTER . $MSG['5300'];
	}
}

$USERSFILTER = array('all' => $MSG['5296'],
	'active' => $MSG['5291'],
	'admin' => $MSG['5294'],
	'fee' => $MSG['5293'],
	'confirmed' => $MSG['5292']);

$selectsetting = (isset($_POST['usersfilter'])) ? $_POST['usersfilter'] : '';
loadblock($MSG['5299'], '', generateSelect('usersfilter', $USERSFILTER));
loadblock($MSG['332'], '', 'text', 'subject', $subject, array($MSG['030'], $MSG['029']));

$CKEditor = new CKEditor();
$CKEditor->basePath = $main_path . 'ckeditor/';
$CKEditor->returnOutput = true;
$CKEditor->config['width'] = 550;
$CKEditor->config['height'] = 400;

loadblock($MSG['605'], $MSG['30_0055'], $CKEditor->editor('content', stripslashes($content)));
loadblock('', '', $MSG['606']);

$template->assign_vars(array(
		'ERROR' => (isset($ERR)) ? $ERR : '',
		'SITEURL' => $system->SETTINGS['siteurl'],
		'TYPENAME' => $MSG['25_0010'],
		'PAGENAME' => $MSG['607']
		));

$template->set_filenames(array(
		'body' => 'adminpages.tpl'
		));
$template->display('body');
?>
