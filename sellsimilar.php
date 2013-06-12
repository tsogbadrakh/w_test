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

if (!$user->is_logged_in())
{
	$_SESSION['REDIRECT_AFTER_LOGIN'] = 'select_category.php';
	header('location: user_login.php');
	exit;
}

if (!isset($_POST['action']))
{
	$id = intval($_GET['id']);
	// Get Closed auctions data
	unset($_SESSION['UPLOADED_PICTURES']);
	unset($_SESSION['UPLOADED_PICTURES_SIZE']);
	$query = "SELECT * FROM " . $DBPrefix . "auctions WHERE id = " . $id . " AND user = " . $user->user_data['id'];
	$result = mysql_query($query);
	$system->check_mysql($result, $query, __LINE__, __FILE__);
	$RELISTEDAUCTION = mysql_fetch_assoc($result);

	$_SESSION['SELL_starts']		= '';
	$_SESSION['SELL_title']			= $RELISTEDAUCTION['title'];
	$_SESSION['SELL_subtitle']		= $RELISTEDAUCTION['subtitle'];
	$_SESSION['SELL_description']	= $RELISTEDAUCTION['description'];
	$_SESSION['SELL_atype']			= $RELISTEDAUCTION['auction_type'];
	$_SESSION['SELL_iquantity']		= $RELISTEDAUCTION['quantity'];
	$_SESSION['SELL_shipping_cost']	= $RELISTEDAUCTION['shipping_cost'];
	$_SESSION['SELL_minimum_bid']	= $RELISTEDAUCTION['minimum_bid'];
	$_SESSION['SELL_sellcat1']		= $RELISTEDAUCTION['category'];
	$_SESSION['SELL_sellcat2']		= $RELISTEDAUCTION['secondcat'];
	$_SESSION['SELL_duration']		= $RELISTEDAUCTION['duration'];
	$_SESSION['SELL_relist']		= $RELISTEDAUCTION['relist'];
	$_SESSION['SELL_shipping']		= $RELISTEDAUCTION['shipping'];
	$_SESSION['SELL_payment']		= explode(', ', $RELISTEDAUCTION['payment']);
	$_SESSION['SELL_international']	= $RELISTEDAUCTION['international'];
	$_SESSION['SELL_imgtype']		= $RELISTEDAUCTION['imgtype'];
	$_SESSION['SELL_file_uploaded']	= $RELISTEDAUCTION['photo_uploaded'];
	$_SESSION['SELL_pict_url']		= '';
	$_SESSION['SELL_shipping_terms'] = $RELISTEDAUCTION['shipping_terms'];
	$_SESSION['SELL_is_bold']			= $RELISTEDAUCTION['bold'];
	$_SESSION['SELL_is_highlighted']	= $RELISTEDAUCTION['highlighted'];
	$_SESSION['SELL_is_featured']		= $RELISTEDAUCTION['featured'];

	if (floatval($RELISTEDAUCTION['reserve_price']) > 0)
	{
		$_SESSION['SELL_reserve_price'] = $RELISTEDAUCTION['reserve_price'];
		$_SESSION['SELL_with_reserve']  = 'yes';
	}
	else
	{
		$_SESSION['SELL_reserve_price'] = '';
		$_SESSION['SELL_with_reserve']  = 'no';
	}

	if (floatval($RELISTEDAUCTION['buy_now']) > 0)
	{
		$_SESSION['SELL_buy_now_price'] = $RELISTEDAUCTION['buy_now'];
		$_SESSION['SELL_with_buy_now']  = 'yes';
	}
	else
	{
		$_SESSION['SELL_buy_now_price'] = '';
		$_SESSION['SELL_with_buy_now']  = 'no';
	}

	if (floatval($RELISTEDAUCTION['increment']) > 0)
	{
		$_SESSION['SELL_increment']			= 2;
		$_SESSION['SELL_customincrement']	= $RELISTEDAUCTION['increment'];
	}
	else
	{
		$_SESSION['SELL_increment']			= 1;
		$_SESSION['SELL_customincrement']	= 0;
	}
	if (isset($_GET['relist']))
	{
		$_SESSION['SELL_auction_id']	= $id;
		$_SESSION['SELL_action']		= 'relist';
		$_SESSION['SELL_pict_url']		= $RELISTEDAUCTION['pict_url'];
		$_SESSION['SELL_pict_url_temp']	= str_replace('thumb-', '', $RELISTEDAUCTION['pict_url']);

		// get gallery images
		$UPLOADED_PICTURES = array();
		$file_types = array('gif', 'jpg', 'jpeg', 'png');
		if (is_dir($upload_path . intval($_GET['id'])))
		{
			$dir = opendir($upload_path . intval($_GET['id']));
			while (($myfile = readdir($dir)) !== false)
			{
				if ($myfile != '.' && $myfile != '..' && !is_file($myfile))
				{
					$file_ext = strtolower(substr($myfile, strrpos($myfile, '.') + 1));
					if (in_array($file_ext, $file_types) && (strstr($RELISTEDAUCTION['pict_url'], 'thumb-') === false || $RELISTEDAUCTION['pict_url'] != $myfile))
					{
						$UPLOADED_PICTURES[] = $myfile;
					}
				}
			}
			closedir($dir);
		}
		$_SESSION['UPLOADED_PICTURES'] = $UPLOADED_PICTURES;

		if (count($UPLOADED_PICTURES) > 0)
		{
			if (!file_exists($upload_path . session_id()))
			{
				umask();
				mkdir($upload_path . session_id(), 0777);
			}
			foreach ($UPLOADED_PICTURES as $k => $v)
			{
				$system->move_file($uploaded_path . intval($_GET['id']) . '/' . $v, $uploaded_path . session_id() . '/' . $v, false);
			}
			if (!empty($RELISTEDAUCTION['pict_url']))
			{
				$system->move_file($uploaded_path . intval($_GET['id']) . '/' . $RELISTEDAUCTION['pict_url'], $uploaded_path . session_id() . '/' . $RELISTEDAUCTION['pict_url'], false);
			}
		}
	}

	header('location: sell.php?mode=recall');
}
?>
