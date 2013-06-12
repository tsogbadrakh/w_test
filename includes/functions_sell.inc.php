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

function generate_id()
{
	global $_SESSION;
	if (!isset($_SESSION['SELL_auction_id']))
	{
		$auction_id = md5(uniqid(rand()));
		$_SESSION['SELL_auction_id'] = $auction_id;
	}
	else
	{
		$auction_id = $_SESSION['SELL_auction_id'];
	}
	return $auction_id;
}

function setvars()
{
	global $with_reserve, $reserve_price, $minimum_bid, $pict_url, $imgtype, $title, $subtitle, $description, $atype, $iquantity, $buy_now, $buy_now_price;
	global $duration, $relist, $increments, $customincrement, $shipping, $shipping_terms, $payment, $international, $sellcat1, $sellcat2, $buy_now_only, $a_starts, $shipping_cost, $is_bold, $is_highlighted, $is_featured, $start_now;
	global $_POST, $_SESSION, $system;

	$with_reserve = (isset($_POST['with_reserve'])) ? $_POST['with_reserve'] : $_SESSION['SELL_with_reserve'];
	$reserve_price = (isset($_POST['reserve_price'])) ? $_POST['reserve_price'] : $_SESSION['SELL_reserve_price'];
	$minimum_bid = (isset($_POST['minimum_bid'])) ? $_POST['minimum_bid'] : $_SESSION['SELL_minimum_bid'];
	$default_minbid = ($system->SETTINGS['moneyformat'] == 1) ? 0.99 : '0,99';
	$minimum_bid = (empty($minimum_bid)) ? $default_minbid : $minimum_bid;
	$shipping_cost = (isset($_POST['shipping_cost'])) ? $_POST['shipping_cost'] : $_SESSION['SELL_shipping_cost'];
	$shipping_cost = (empty($shipping_cost)) ? 0 : $shipping_cost;
	$imgtype = (isset($_POST['imgtype'])) ? $_POST['imgtype'] : $_SESSION['SELL_file_uploaded'];
	$title = (isset($_POST['title'])) ? $_POST['title'] : $_SESSION['SELL_title'];
	$subtitle = (isset($_POST['subtitle'])) ? $_POST['subtitle'] : $_SESSION['SELL_subtitle'];
	$description = (isset($_POST['description'])) ? $_POST['description'] : $_SESSION['SELL_description'];
	$pict_url = (isset($_POST['pict_url'])) ? $_POST['pict_url'] : $_SESSION['SELL_pict_url'];
	$atype = (isset($_POST['atype'])) ? $_POST['atype'] : $_SESSION['SELL_atype'];
	$iquantity = (int)(isset($_POST['iquantity'])) ? $_POST['iquantity'] : $_SESSION['SELL_iquantity'];
	$iquantity = (empty($iquantity)) ? 1 : round($iquantity);
	$buy_now = (isset($_POST['buy_now'])) ? $_POST['buy_now'] : $_SESSION['SELL_with_buy_now'];
	$buy_now_price = (isset($_POST['buy_now_price'])) ? $_POST['buy_now_price'] : $_SESSION['SELL_buy_now_price'];
	$duration = (isset($_POST['duration'])) ? $_POST['duration'] : $_SESSION['SELL_duration'];
	$relist = (isset($_POST['autorelist'])) ? $_POST['autorelist'] : $_SESSION['SELL_relist'];
	$increments = (isset($_POST['increments'])) ? $_POST['increments'] : $_SESSION['SELL_increments'];
	$customincrement = (isset($_POST['customincrement'])) ? $_POST['customincrement'] : $_SESSION['SELL_customincrement'];
	$shipping = (isset($_POST['shipping'])) ? $_POST['shipping'] : $_SESSION['SELL_shipping'];
	$shipping_terms = (isset($_POST['shipping_terms'])) ? $_POST['shipping_terms'] : $_SESSION['SELL_shipping_terms'];
	$payment = (isset($_POST['payment'])) ? $_POST['payment'] : $_SESSION['SELL_payment'];
	$payment = (is_array($payment)) ? $payment : array();
	$international = (isset($_POST['international'])) ? $_POST['international'] : ''; 
	$international = (isset($_SESSION['SELL_international']) && (!isset($_POST['action']) || $_POST['action'] != 2)) ? $_SESSION['SELL_international'] : $international;
	$sellcat1 = $_SESSION['SELL_sellcat1'];
	$_SESSION['SELL_sellcat2'] = (isset($_SESSION['SELL_sellcat2'])) ? $_SESSION['SELL_sellcat2'] : '';
	$sellcat2 = $_SESSION['SELL_sellcat2'];
	$buy_now_only = (isset($_POST['buy_now_only'])) ? $_POST['buy_now_only'] : $_SESSION['SELL_buy_now_only'];
	$buy_now_only = (empty($buy_now_only)) ? 'n' : $buy_now_only;
	$a_starts = (isset($_POST['a_starts'])) ? $_POST['a_starts'] : $_SESSION['SELL_starts'];
	$is_bold = (isset($_POST['is_bold'])) ? 'y' : $_SESSION['SELL_is_bold'];
	$is_featured = (isset($_POST['is_featured'])) ? 'y' : $_SESSION['SELL_is_featured'];
	$is_highlighted = (isset($_POST['is_highlighted'])) ? 'y' : $_SESSION['SELL_is_highlighted'];
	$start_now = (isset($_POST['start_now'])) ? $_POST['start_now'] : '';
	$start_now = (isset($_SESSION['SELL_start_now']) && (!isset($_POST['action']) || $_POST['action'] != 2)) ? $_SESSION['SELL_start_now'] : $start_now;
	if (isset($_POST['action']) && $_POST['action'] == 2)
	{
		$is_bold = (isset($_POST['is_bold'])) ? 'y' : 'n';
		$is_featured = (isset($_POST['is_featured'])) ? 'y' : 'n';
		$is_highlighted = (isset($_POST['is_highlighted'])) ? 'y' : 'n';
		$payment = (isset($_POST['payment'])) ? $payment : array();
	}
}

function makesessions()
{
	global $with_reserve, $reserve_price, $minimum_bid, $pict_url, $imgtype, $title, $subtitle, $description, $pict_url, $atype, $iquantity, $buy_now, $buy_now_price;
	global $duration, $relist, $increments, $customincrement, $shipping, $shipping_terms, $payment, $international, $sendemail, $buy_now_only, $a_starts, $shipping_cost, $is_bold, $is_highlighted, $is_featured, $start_now, $_SESSION;

	$_SESSION['SELL_with_reserve'] = $with_reserve;
	$_SESSION['SELL_reserve_price'] = $reserve_price;
	$_SESSION['SELL_minimum_bid'] = $minimum_bid;
	$_SESSION['SELL_shipping_cost'] = $shipping_cost;
	$_SESSION['SELL_file_uploaded'] = $imgtype;
	$_SESSION['SELL_title'] = $title;
	$_SESSION['SELL_subtitle'] = $subtitle;
	$_SESSION['SELL_description'] = $description;
	$_SESSION['SELL_pict_url'] = $pict_url;
	$_SESSION['SELL_atype'] = $atype;
	$_SESSION['SELL_iquantity'] = $iquantity;
	$_SESSION['SELL_with_buy_now'] = $buy_now;
	$_SESSION['SELL_buy_now_price'] = $buy_now_price;
	$_SESSION['SELL_duration'] = $duration;
	$_SESSION['SELL_relist'] = $relist;
	$_SESSION['SELL_increments'] = $increments;
	$_SESSION['SELL_customincrement'] = $customincrement;
	$_SESSION['SELL_shipping'] = $shipping;
	$_SESSION['SELL_shipping_terms'] = $shipping_terms;
	$_SESSION['SELL_payment'] = $payment;
	$_SESSION['SELL_international'] = $international;
	$_SESSION['SELL_buy_now_only'] = $buy_now_only;
	$_SESSION['SELL_starts'] = $a_starts;
	$_SESSION['SELL_is_bold'] = $is_bold;
	$_SESSION['SELL_is_highlighted'] = $is_highlighted;
	$_SESSION['SELL_is_featured'] = $is_featured;
	$_SESSION['SELL_start_now'] = $start_now;
}

function unsetsessions()
{
	global $_SESSION, $system;

	$_SESSION['SELL_with_reserve'] = '';
	$_SESSION['SELL_reserve_price'] = '';
	$_SESSION['SELL_minimum_bid'] = ($system->SETTINGS['moneyformat'] == 1) ? 0.99 : '0,99';
	$_SESSION['SELL_shipping_cost'] = 0;
	$_SESSION['SELL_file_uploaded'] = '';
	$_SESSION['SELL_title'] = '';
	$_SESSION['SELL_subtitle'] = '';
	$_SESSION['SELL_description'] = '';
	$_SESSION['SELL_pict_url'] = '';
	$_SESSION['SELL_pict_url_temp'] = '';
	$_SESSION['SELL_atype'] = '';
	$_SESSION['SELL_iquantity'] = '';
	$_SESSION['SELL_with_buy_now'] = '';
	$_SESSION['SELL_buy_now_price'] = '';
	$_SESSION['SELL_duration'] = '';
	$_SESSION['SELL_relist'] = '';
	$_SESSION['SELL_increments'] = '';
	$_SESSION['SELL_customincrement'] = 0;
	$_SESSION['SELL_shipping'] = '';
	$_SESSION['SELL_shipping_terms'] = '';
	$_SESSION['SELL_payment'] = array();
	$_SESSION['SELL_international'] = '';
	$_SESSION['SELL_sendemail'] = '';
	$_SESSION['SELL_starts'] = '';
	$_SESSION['SELL_action'] = '';
	$_SESSION['SELL_is_bold'] = 'n';
	$_SESSION['SELL_is_highlighted'] = 'n';
	$_SESSION['SELL_is_featured'] = 'n';
	$_SESSION['SELL_start_now'] = '';
}

function updateauction($type)
{
	global $_SESSION, $DBPrefix, $a_starts, $a_ends, $payment_text, $system, $fee;
	$extraquery = ($type == 2) ? 
		",relisted = relisted + 1,
		current_bid = 0,
		starts = '" . $a_starts . "',
		num_bids = 0" : '';
	$query =
		"UPDATE " . $DBPrefix . "auctions SET
		title = '" . $system->cleanvars($_SESSION['SELL_title']) . "',
		subtitle = '" . $system->cleanvars($_SESSION['SELL_subtitle']) . "',
		description = '" . addslashes($_SESSION['SELL_description']) . "',
		pict_url = '" . $system->cleanvars($_SESSION['SELL_pict_url']) . "',
		category = " . $_SESSION['SELL_sellcat1'] . ",
		secondcat = " . intval($_SESSION['SELL_sellcat2']) . ",
		minimum_bid = '" . $system->input_money(($_SESSION['SELL_buy_now_only'] == 'n') ? $_SESSION['SELL_minimum_bid'] : $_SESSION['SELL_buy_now_price']) . "',
		shipping_cost = '" . $system->input_money($_SESSION['SELL_shipping_cost']) . "',
		reserve_price = '" . $system->input_money(($_SESSION['SELL_with_reserve'] == 'yes') ? $_SESSION['SELL_reserve_price'] : 0) . "',
		buy_now = '" . $system->input_money(($_SESSION['SELL_with_buy_now'] == 'yes') ? $_SESSION['SELL_buy_now_price'] : 0) . "',
		bn_only = '" . $_SESSION['SELL_buy_now_only'] . "',
		auction_type = '" . $_SESSION['SELL_atype'] . "',
		duration = '" . $_SESSION['SELL_duration'] . "',
		increment = " . $system->input_money($_SESSION['SELL_customincrement']) . ",
		shipping = '" . $_SESSION['SELL_shipping'] . "',
		payment = '" . $payment_text . "',
		international = " . (($_SESSION['SELL_international']) ? 1 : 0) . ",
		ends = '" . $a_ends . "',
		photo_uploaded = " . (($_SESSION['SELL_file_uploaded'])? 1 : 0) . ",
		quantity = " . $_SESSION['SELL_iquantity'] . ",
		relist = " . intval($_SESSION['SELL_relist']) . ",
		shipping_terms = '" . $system->cleanvars($_SESSION['SELL_shipping_terms']) . "',
		closed = 0,
		bold = '" . $_SESSION['SELL_is_bold'] . "',
		highlighted = '" . $_SESSION['SELL_is_highlighted'] . "',
		featured = '" . $_SESSION['SELL_is_featured'] . "',
		current_fee = current_fee + " . $fee;
		$query .= $extraquery;
		$query .= " WHERE id = " . $_SESSION['SELL_auction_id'];
	return $query;
}

function addauction()
{
	global $DBPrefix, $_SESSION, $user, $a_starts, $a_ends, $payment_text, $system, $fee;

	return "INSERT INTO " . $DBPrefix . "auctions VALUES (NULL, " . $user->user_data['id'] . ", '" . $system->cleanvars($_SESSION['SELL_title']) . "', '" . $system->cleanvars($_SESSION['SELL_subtitle']) . "', '" .  $a_starts . "', '" . addslashes($_SESSION['SELL_description']) . "', '" . $system->cleanvars($_SESSION['SELL_pict_url']) . "', " . $_SESSION['SELL_sellcat1'] . ", " . intval($_SESSION['SELL_sellcat2']) . ", '" . $system->input_money(($_SESSION['SELL_buy_now_only'] == 'n') ? $_SESSION['SELL_minimum_bid'] : $_SESSION['SELL_buy_now_price']) . "', '" . $system->input_money($_SESSION['SELL_shipping_cost']) . "', '" . $system->input_money(($_SESSION['SELL_with_reserve'] == 'yes') ? $_SESSION['SELL_reserve_price'] : 0) . "', '" . $system->input_money(($_SESSION['SELL_with_buy_now'] == 'yes') ? $_SESSION['SELL_buy_now_price'] : 0) . "', '" . $_SESSION['SELL_atype'] . "', '" . $_SESSION['SELL_duration'] . "', '" . $system->input_money($_SESSION['SELL_customincrement']) . "', '" . $_SESSION['SELL_shipping'] . "', '" . $payment_text . "', " . (($_SESSION['SELL_international']) ? 1 : 0) . ", '" . $a_ends . "', 0, 0, " . (($_SESSION['SELL_file_uploaded']) ? 1 : 0) . ", " . $_SESSION['SELL_iquantity'] . ", 0, " . intval($_SESSION['SELL_relist']) . ", 0, 0, 'n', '" . $system->cleanvars($_SESSION['SELL_shipping_terms']) . "', '" . $_SESSION['SELL_buy_now_only'] . "', '" . $_SESSION['SELL_is_bold'] . "', '" . $_SESSION['SELL_is_highlighted'] . "', '" . $_SESSION['SELL_is_featured'] . "', " . $fee . ")";
}

function remove_bids($auction_id)
{
	global $DBPrefix, $system;
	$query = "DELETE FROM " . $DBPrefix . "bids WHERE auction = " . $auction_id;
	$system->check_mysql(mysql_query($query), $query, __LINE__, __FILE__);
}

function get_fee($minimum_bid)
{
	global $system, $DBPrefix, $buy_now_price, $reserve_price, $is_bold, $is_highlighted, $is_featured, $_SESSION, $subtitle, $sellcat2, $relist;

	$query = "SELECT * FROM " . $DBPrefix . "fees ORDER BY type, fee_from ASC";
	$res = mysql_query($query);
	$system->check_mysql($res, $query, __LINE__, __FILE__);

	$fee_value = 0;
	while ($row = mysql_fetch_assoc($res))
	{
		if ($minimum_bid > $row['fee_from'] && $minimum_bid < $row['fee_to'] && $row['type'] == 'setup')
		{
			if ($row['fee_type'] == 'flat')
			{
				$fee_value = bcadd($fee_value, $row['value'], $system->SETTINGS['moneydecimals']);
			}
			else
			{
				$tmp = bcdiv($row['value'], '100', $system->SETTINGS['moneydecimals']);
				$tmp = bcmul($tmp, $minimum_bid, $system->SETTINGS['moneydecimals']);
				$fee_value = bcadd($fee_value, $tmp, $system->SETTINGS['moneydecimals']);
			}
		}
		if ($row['type'] == 'buyout_fee' && $buy_now_price > 0)
		{
			$fee_value = bcadd($fee_value, $row['value'], $system->SETTINGS['moneydecimals']);
		}
		if ($row['type'] == 'rp_fee' && $reserve_price > 0)
		{
			$fee_value = bcadd($fee_value, $row['value'], $system->SETTINGS['moneydecimals']);
		}
		if ($row['type'] == 'bolditem_fee' && $is_bold == 'y')
		{
			$fee_value = bcadd($fee_value, $row['value'], $system->SETTINGS['moneydecimals']);
		}
		if ($row['type'] == 'hlitem_fee' && $is_highlighted == 'y')
		{
			$fee_value = bcadd($fee_value, $row['value'], $system->SETTINGS['moneydecimals']);
		}
		if ($row['type'] == 'hpfeat_fee' && $is_featured == 'y')
		{
			$fee_value = bcadd($fee_value, $row['value'], $system->SETTINGS['moneydecimals']);
		}
		if ($row['type'] == 'picture_fee' && count($_SESSION['UPLOADED_PICTURES']) > 0)
		{
			$tmp = bcmul(count($_SESSION['UPLOADED_PICTURES']), $row['value'], $system->SETTINGS['moneydecimals']);
			$fee_value = bcadd($fee_value, $tmp, $system->SETTINGS['moneydecimals']);
		}
		if ($row['type'] == 'subtitle_fee' && !empty($subtitle))
		{
			$fee_value = bcadd($fee_value, $row['value'], $system->SETTINGS['moneydecimals']);
		}
		if ($row['type'] == 'excat_fee' && $sellcat2 > 0)
		{
			$fee_value = bcadd($fee_value, $row['value'], $system->SETTINGS['moneydecimals']);
		}
		if ($row['type'] == 'relist_fee' && $relist > 0)
		{
			$fee_value = bcadd($fee_value, ($row['value'] * $relist), $system->SETTINGS['moneydecimals']);
		}
	}

	if ($_SESSION['SELL_action'] == 'edit')
	{
		global $user;

		$query = "SELECT current_fee FROM " . $DBPrefix . "auctions WHERE id = " . $_SESSION['SELL_auction_id'] . " AND user = " . $user->user_data['id'];
		$res = mysql_query($query);
		$system->check_mysql($res, $query, __LINE__, __FILE__);
		$fee_value = bcsub($fee_value, mysql_result($res, 0), $system->SETTINGS['moneydecimals']);
		if ($fee_value < 0)
		{
			$fee_value = 0;
		}
	}

	return $fee_value;
}

function update_cat_counters($add, $category)
{
	global $_SESSION, $DBPrefix, $system, $catscontrol;

	$query = "SELECT left_id, right_id, level FROM " . $DBPrefix . "categories WHERE cat_id = " . $category;
	$res = mysql_query($query);
	$system->check_mysql($res, $query, __LINE__, __FILE__);
	$parent_node = mysql_fetch_assoc($res);
	$crumbs = $catscontrol->get_bread_crumbs($parent_node['left_id'], $parent_node['right_id']);

	$addsub = ($add) ? '+' : '-';
	for ($i = 0; $i < count($crumbs); $i++)
	{
		$query = "UPDATE " . $DBPrefix . "categories SET sub_counter = sub_counter " . $addsub . " 1 WHERE cat_id = " . $crumbs[$i]['cat_id'];
		$system->check_mysql(mysql_query($query), $query, __LINE__, __FILE__);
	}
}

function get_category_string($sellcat)
{
	global $DBPrefix, $system, $catscontrol, $category_names;

	if (empty($sellcat) || !isset($sellcat))
		return '';

	$query = "SELECT left_id, right_id, level FROM " . $DBPrefix . "categories WHERE cat_id = " . intval($sellcat);
	$res = mysql_query($query);
	$system->check_mysql($res, $query, __LINE__, __FILE__);
	$parent_node = mysql_fetch_assoc($res);

	$TPL_categories_list = '';
	$crumbs = $catscontrol->get_bread_crumbs($parent_node['left_id'], $parent_node['right_id']);
	for ($i = 0; $i < count($crumbs); $i++)
	{
		if ($crumbs[$i]['cat_id'] > 0)
		{
			if ($i > 0)
			{
				$TPL_categories_list .= ' &gt; ';
			}
			$TPL_categories_list .= $category_names[$crumbs[$i]['cat_id']];
		}
	}
	return $TPL_categories_list;
}

function check_gateway($gateway)
{
	global $user;
	if ($gateway == 'paypal' && !empty($user->user_data['paypal_email']))
		return true;
	if ($gateway == 'authnet' && !empty($user->user_data['authnet_id']) && !empty($user->user_data['authnet_pass']))
		return true;
	if ($gateway == 'worldpay' && !empty($user->user_data['worldpay_id']))
		return true;
	if ($gateway == 'moneybookers' && !empty($user->user_data['moneybookers_email']))
		return true;
	if ($gateway == 'toocheckout_id' && !empty($user->user_data['authnet_id']))
		return true;
	return false;
}
?>