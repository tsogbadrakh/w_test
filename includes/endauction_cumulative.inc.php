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

if (!defined('InWeBid')) exit();

$emailer = new email_class();
$emailer->assign_vars(array(
		'SITE_URL' => $system->SETTINGS['siteurl'],
		'SITENAME' => $system->SETTINGS['sitename'],
		'ADMINMAIL' => $system->SETTINGS['adminmail'],

		'REPORT' => $report,

		'S_NAME' => $row['name']
		));
$emailer->email_uid = $row['id'];
$emailer->email_sender($row['email'], 'endauction_cumulative.inc.php', $MSG['25_0199']);
?>
