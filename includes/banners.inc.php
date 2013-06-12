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

if (!function_exists('view'))
{
	function view()
	{
		global $system, $DBPrefix, $uploaded_path;

		$return = '';
		$joinings = '';
		$extra = '';
		$BANNERSARRAY = array();

		if (strstr($_SERVER['SCRIPT_FILENAME'], 'browse.php'))
		{
			global $id;
			$joinings .= ' LEFT JOIN ' . $DBPrefix . 'bannerscategories c ON (c.banner = b.id)';
			$extra .=  ' AND c.category = ' . $id;
		}
		elseif (strstr($_SERVER['SCRIPT_FILENAME'], 'item.php'))
		{
			global $title, $description, $category;
			$joinings .= ' LEFT JOIN ' . $DBPrefix . 'bannerskeywords k ON (k.banner = b.id)';
			$extra .=  " AND k.keyword LIKE '%" . $title . "%' OR k.keyword LIKE '%" . mysql_escape_string($description) . "%'";
		}

		$query = "SELECT b.id FROM " . $DBPrefix . "banners b " . $joinings . "
				WHERE b.views < b.purchased OR b.purchased = 0" . $extra;
		$res = mysql_query($query);
		$system->check_mysql($res, $query, __LINE__, __FILE__);
		$CKcount = false;

		if (mysql_num_rows($res) == 0)
		{
			/*$query = "SELECT b.id FROM " . $DBPrefix . "banners b " . $joinings . "
					WHERE b.views < b.purchased OR b.purchased = 0";*/
			$query = "SELECT b.id, COUNT(k.banner) as Kcount, COUNT(c.banner) as Ccount FROM " . $DBPrefix . "banners b
					LEFT JOIN " . $DBPrefix . "bannerscategories c ON (c.banner = b.id)
					LEFT JOIN " . $DBPrefix . "bannerskeywords k ON (k.banner = b.id)
					WHERE (b.views < b.purchased OR b.purchased = 0)
					GROUP BY k.banner, c.banner";
			$res = mysql_query($query);
			$system->check_mysql($res, $query, __LINE__, __FILE__);
			$CKcount = false;
		}

		// We have at least one banners to show
		while ($row = mysql_fetch_assoc($res))
		{
			if ($CKcount && $row['Kcount'] == 0 && $row['Ccount'] == 0)
			{
				$BANNERSARRAY[] = $row;
			}
			elseif (!$CKcount)
			{
				$BANNERSARRAY[] = $row;
			}
		}

		// Display banner
		if (count($BANNERSARRAY) > 0)
		{
			$RAND_IDX = array_rand($BANNERSARRAY);
			$BANNERTOSHOW = $BANNERSARRAY[$RAND_IDX]['id'];

			$query = "SELECT * FROM " . $DBPrefix . "banners WHERE id = " . $BANNERTOSHOW;
			$res = mysql_query($query);
			$system->check_mysql($res, $query, __LINE__, __FILE__);
			$THISBANNER = mysql_fetch_array($res);
			if ($THISBANNER['type'] == 'swf')
			{
				$return .= '
				<object width="' . $THISBANNER['width'] . '" height="' . $THISBANNER['height'] . '">
					<param name="movie" value="' . $system->SETTINGS['siteurl'] . $uploaded_path . 'banners/' . $THISBANNER['user'] . '/' . $THISBANNER['name'] . '">
					<param name="quality" value="high">
					<embed src="' . $system->SETTINGS['siteurl'] . $uploaded_path . 'banners/' . $THISBANNER['user'] . '/' . $THISBANNER['name'] . '" width="' . $THISBANNER['width'] . '" height="' . $THISBANNER['height'] . '"></embed>
				</object>';
			}
			else
			{
				$return .= '
				<a href="' . $system->SETTINGS['siteurl'] . 'clickthrough.php?banner=' . $THISBANNER['id'] . '&amp;url=' . $THISBANNER['url'] . '" target="_blank"> <img border=0 alt="' . $THISBANNER['alt'] . '" src="' . $system->SETTINGS['siteurl'] . $uploaded_path . 'banners/' . $THISBANNER['user'] . '/' . $THISBANNER['name'] . '" /></a>';
			}
			if (!empty($THISBANNER['sponsortext']))
			{
				$return .= '<br><a href="' . $system->SETTINGS['siteurl'] . 'clickthrough.php?banner=' . $THISBANNER['id'] . '&amp;url=' . $THISBANNER['url'] . '" target="_blank">' . $THISBANNER['sponsortext'] . '</a>';
			}
			// Update views
			$query = "UPDATE " . $DBPrefix . "banners set views = views + 1 WHERE id = " . $THISBANNER['id'];
			$system->check_mysql(mysql_query($query), $query, __LINE__, __FILE__);
		}
		return $return;
	}
}
?>