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

$language = (isset($_GET['lang'])) ? $_GET['lang'] : 'EN';
$catscontrol = new MPTTcategories();

function search_cats($parent_id, $level)
{
	global $DBPrefix, $catscontrol;
	$root = $catscontrol->get_virtual_root();
	$tree = $catscontrol->display_tree($root['left_id'], $root['right_id'], '|___');
	foreach ($tree as $k => $v)
	{
		$catstr .= ",\n" . $k . " => '" . $v . "'";
	}
	return $catstr;
}

function rebuild_cat_file($cats)
{
	global $language, $main_path;
	$output = "<?\n";
	$output.= "$" . "category_names = array(\n";

	$num_rows = count($cats);

	$i = 0;
	foreach ($cats as $k => $v) {
		$output .= "$k => '$v'";
		$i++;
		if ($i < $num_rows)
			$output .= ",\n";
		else
			$output .= "\n";
	}

	$output .= ");\n\n";

	$output .= "$" . "category_plain = array(\n0 => ''";

	$output .= search_cats(0, 0);

	$output .= ");\n?>";

	$handle = fopen ($main_path . 'language/' . $language . '/categories.inc.php', 'w');
	fputs($handle, $output);
	fclose($handle);
}

if (isset($_POST['categories']))
{
	rebuild_cat_file($_POST['categories']);
	include 'util_cc1.php';
}

include $main_path . 'language/' . $language . '/categories.inc.php';

$query = "SELECT cat_id, cat_name FROM " . $DBPrefix . "categories ORDER BY cat_name";
$res = mysql_query($query);
$system->check_mysql($res, $query, __LINE__, __FILE__);
$bg = '';
while ($row = mysql_fetch_assoc($res))
{
	// set category data
	$template->assign_block_vars('cats', array(
			'CAT_ID' => $row['cat_id'],
			'CAT_NAME' => $system->uncleanvars($row['cat_name']),
			'TRAN_CAT' => $category_names[$row['cat_id']],
			'BG' => $bg
			));
	$bg = ($bg == '') ? 'class="bg"' : '';
}

$template->assign_vars(array(
		'ERROR' => (isset($ERR)) ? $ERR : '',
		'SITEURL' => $system->SETTINGS['siteurl']
		));

$template->set_filenames(array(
		'body' => 'categoriestrans.tpl'
		));
$template->display('body');
?>