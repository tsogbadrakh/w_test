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

// Handle banners clickthrough
$URL = trim($_GET['url']);

// Update clickthrough counter in the database
$query = "UPDATE " . $DBPrefix . "banners set clicks = clicks + 1 WHERE id=" . intval($_GET['banner']);
$system->check_mysql(mysql_query($query), $query, __LINE__, __FILE__);

// Redirect
header('location: ' . $URL);
exit;
?>
