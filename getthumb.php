<?php
/***************************************************************************
 *   copyright              : (C) 2008, 2009 WeBid
 *   site                   : http://www.webidsupport.com/
 ***************************************************************************/

/***************************************************************************
 *   This program is free software; you can redistribute it and/or modify
 *   it under the terms of the GNU General Public License as published by
 *   the Free Software Foundation; either version 2 of the License, or
 *   (at your option) any later version. Although none of the code may be
 *   sold. If you have been sold this script, get a refund.
 ***************************************************************************/

include 'includes/common.inc.php';

$w = (isset($_GET['w'])) ? intval($_GET['w']) : '';
$fromfile = (isset($_GET['fromfile'])) ? $_GET['fromfile'] : '';
$nomanage = false;

function ErrorPNG($err)
{
	header('Content-type: image/png');
	$im = imagecreate(100, 30);
	$bgc = imagecolorallocate($im, 255, 255, 255);
	$tc = imagecolorallocate($im, 0, 0, 0);
	imagefilledrectangle($im, 0, 0, 100, 30, $bgc);
	imagestring($im, 1, 5, 5, $err, $tc);
	imagepng($im);
}

// control parameters and file existence
if (!isset($_GET['fromfile']) || $fromfile == '')
{
	ErrorPNG('params empty');
	exit;
}
elseif (!file_exists($_GET['fromfile']) && !fopen($_GET['fromfile'], 'r'))
{
	ErrorPNG('img does not exist');
	exit;
}

if (file_exists($upload_path . 'cache/' . $w . '-' . md5($fromfile)))
{
	$img = getimagesize($fromfile);
	if ($img[2] == 1)
	{
		$img['mime'] = 'image/png';
	}
	header('Content-type: ' . $img['mime']);
	echo file_get_contents($upload_path . 'cache/' . $w . '-' . md5($fromfile));
}
else
{
	if (function_exists('imagetypes'))
	{
		if (!is_dir($upload_path . 'cache')) mkdir($upload_path . 'cache', 0777);

		if (!isset($_GET['w'])) $w = 100;
		$img = @getimagesize($fromfile);
		if (is_array($img))
		{
			switch ($img[2])
			{
				case 1 :
					if (!(imagetypes() &IMG_GIF))
					{
						if (!function_exists('imagecreatefromgif'))
						{
							$nomanage = true;
						}
						else
						{
							$outype = 'png';
							$img['mime'] = 'image/png';
						}
					}
					else
					{
						$outype = 'gif';
					}
					$imtype = 'gif';
					break;
				case 2 :
					if (!(imagetypes() &IMG_JPG)) $nomanage = true;
					$outype = 'jpeg';
					$imtype = 'jpeg';
					break;
				case 3 :
					if (!(imagetypes() &IMG_PNG)) $nomanage = true;
					$imtype = 'png';
					$outype = 'png';
					break;
				default :
					ErrorPNG('wrong img type');
					exit;
			}
			// check image orientation
			if ($img[0] < $img[1])
			{
				$h = $w;
				$ratio = floatval($img[1] / $h);
				$w = ceil($img[0] / $ratio);
			}
			else
			{
				$ratio = floatval($img[0] / $w);
				$h = ceil($img[1] / $ratio);
			}
		}
		else
		{
			ErrorPNG('not image type');
			exit;
		}
	}
	else
	{
		$nomanage = true;
	}
	if ($nomanage)
	{
		ErrorPNG('image type not supported');
		exit;
	}

	$ou = imagecreatetruecolor($w, $h);
	imagealphablending($ou, false);
	$funcall = "imagecreatefrom$imtype";
	imagecopyresampled($ou, $funcall($fromfile), 0, 0, 0, 0, $w, $h, $img[0], $img[1]);
	$funcall = "image$outype";
	$funcall($ou, $upload_path . 'cache/' . $w . '-' . md5($fromfile));
	header('Content-type: ' . $img['mime']);
	$funcall($ou);
}
?>
