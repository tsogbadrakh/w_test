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

include 'includes/common.inc.php';

$template->assign_vars(array(
		'DOCDIR' => $DOCDIR, // Set document direction (set in includes/messages.XX.inc.php) ltr/rtl
		'PAGE_TITLE' => $system->SETTINGS['sitename'] . ' ' . $MSG['5236'],
		'CHARSET' => $CHARSET,
		'LOGO' => ($system->SETTINGS['logo']) ? '<a href="' . $system->SETTINGS['siteurl'] . 'index.php?"><img src="' . $system->SETTINGS['siteurl'] . 'themes/' . $system->SETTINGS['theme'] . '/' . $system->SETTINGS['logo'] . '" border="0" alt="' . $system->SETTINGS['sitename'] . '"></a>' : "&nbsp;",
		'SITEURL' => $system->SETTINGS['siteurl']
		));

// Retrieve FAQs categories from the database
$query = "SELECT * FROM " . $DBPrefix . "faqscat_translated WHERE lang = '$language' ORDER BY category ASC";
$res = mysql_query($query);
$system->check_mysql($res, $query, __LINE__, __FILE__);
while ($cat = mysql_fetch_array($res))
{
	$template->assign_block_vars('cats', array(
			'CAT' => stripslashes($cat['category']),
			'ID' => $cat['id']
			));
}

$template->set_filenames(array(
		'body' => 'faqs.tpl'
		));
$template->display('body');
?>
