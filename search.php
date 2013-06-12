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
include $main_path . 'language/' . $language . '/categories.inc.php';
include $include_path . 'dates.inc.php';

$NOW = time();

$term = $system->cleanvars(trim($_GET['_kwd']));
$cat_id = intval($_GET['_catid']);

if (strlen($term) == 0)
{
	$template->assign_vars(array(
			'ERROR' => $ERR_037,
			'NUM_AUCTIONS' => 0,
			'TOP_HTML' => ''
			));
}
else
{
	$catSQL = '';
	if ($cat_id > 0)
	{
		$catscontrol = new MPTTcategories();
		$query = "SELECT right_id, left_id FROM " . $DBPrefix . "categories WHERE cat_id = " . $cat_id;
		$res = mysql_query($query);
		$system->check_mysql($res, $query, __LINE__, __FILE__);
		$parent_node = mysql_fetch_assoc($res);
		$children = $catscontrol->get_children_list($parent_node['left_id'], $parent_node['right_id']);
		$childarray = array($cat_id);
		foreach ($children as $k => $v)
		{
			$childarray[] = $v['cat_id'];
		}
		$catalist = '(';
		$catalist .= implode(',', $childarray);
		$catalist .= ')';
		$catSQL = " AND (category IN " . $catalist;
		if ($system->SETTINGS['extra_cat'] == 'y')
		{
			$catSQL .= " OR secondcat IN " . $catalist;
		}
		$catSQL .= ")";
	}
	$query = "SELECT * FROM " . $DBPrefix . "auctions WHERE
			(title LIKE '%" . $term . "%' OR id = " . intval($term) . ")
			" . $catSQL . "
			AND closed = 0 AND suspended = 0 AND starts <= " . $NOW . " AND ends > " . $NOW;

	// retrieve records corresponding to passed page number
	$PAGE = isset($_GET['PAGE']) ? intval($_GET['PAGE']) : 1;
	if ($PAGE == 0) $PAGE = 1;

	// determine limits for SQL query
	$left_limit = ($PAGE - 1) * $system->SETTINGS['perpage'];

	// get total number of records
	$res = mysql_query($query);
	$system->check_mysql($res, $query, __LINE__, __FILE__);
	$total = mysql_num_rows($res);

	// get number of pages
	$PAGES = ceil($total / $system->SETTINGS['perpage']);

	$query_ = $query . " ORDER BY ends LIMIT " . $left_limit . ", " . $system->SETTINGS['perpage'];
	$res = mysql_query($query_);
	$system->check_mysql($res, $query_, __LINE__, __FILE__);

	$query_ = $query . " AND featured = 'y' ORDER BY ends LIMIT " . intval(($PAGE - 1) * 5) . ", 5";
	$feat_res = mysql_query($query_);
	$system->check_mysql($feat_res, $query_, __LINE__, __FILE__);

	// to be sure about items format, I've unified the call
	include $include_path . 'browseitems.inc.php';
	browseItems($res, $feat_res, $total, 'search.php', 'q=' . $term . '&id=' . $cat_id);
}

//include 'header.php';
//$template->set_filenames(array('body' => 'search.tpl'));
$template->display('search.tpl');
//include 'footer.php';
?>
