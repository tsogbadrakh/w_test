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

$template->assign(array(
		'L_COPY' => empty($system->SETTINGS['copyright']) ? '' : '<p>' . $system->SETTINGS['copyright'] . '</p>',

		'B_VIEW_TERMS' => ($system->SETTINGS['terms'] == 'y'),
		'B_VIEW_PRIVPOL' => ($system->SETTINGS['privacypolicy'] == 'y'),
		'B_VIEW_ABOUTUS' => ($system->SETTINGS['aboutus'] == 'y'),
		'B_FEES' => ($system->SETTINGS['fees'] == 'y')
		));

//$template->set_filenames(array('footer' => 'global_footer.tpl'));
$template->display('global_footer.tpl');

// if the page has loaded OK you dont need this data anymore :)
unset($_SESSION['SESSION_ERROR']);
?>
