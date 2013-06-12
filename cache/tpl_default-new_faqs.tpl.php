<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html lang="en" dir="<?php echo (isset($this->_rootref['DOCDIR'])) ? $this->_rootref['DOCDIR'] : ''; ?>">
<head>
<title><?php echo (isset($this->_rootref['PAGE_TITLE'])) ? $this->_rootref['PAGE_TITLE'] : ''; ?></title>
<link rel='stylesheet' type='text/css' href='<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>themes/default/style.css'>
<meta http-equiv="Content-Type" content="text/html; charset=<?php echo (isset($this->_rootref['CHARSET'])) ? $this->_rootref['CHARSET'] : ''; ?>">
</head>
<body>
<div class="container">
	<div id="logo">
		<?php echo (isset($this->_rootref['LOGO'])) ? $this->_rootref['LOGO'] : ''; ?>
	</div>
	<div class="content">
		<div class="tableContent3">
			<div class="titTable2 rounded-top rounded-bottom">
				<?php echo ((isset($this->_rootref['L_5236'])) ? $this->_rootref['L_5236'] : ((isset($MSG['5236'])) ? $MSG['5236'] : '{ L_5236 }')); ?>
			</div>
			<div class="table2"> 
				<div style="text-align:right">
					<a href="javascript:window.close()"><?php echo ((isset($this->_rootref['L_678'])) ? $this->_rootref['L_678'] : ((isset($MSG['678'])) ? $MSG['678'] : '{ L_678 }')); ?></a>
				</div>
				<ul>
<?php $_cats_count = (isset($this->_tpldata['cats'])) ? sizeof($this->_tpldata['cats']) : 0;if ($_cats_count) {for ($_cats_i = 0; $_cats_i < $_cats_count; ++$_cats_i){$_cats_val = &$this->_tpldata['cats'][$_cats_i]; ?>
					<li><a href="viewfaqs.php?cat=<?php echo $_cats_val['ID']; ?>"><?php echo $_cats_val['CAT']; ?></a></li>
<?php }} ?>
				</ul>
			</div>
		</div>
	</div>
</div>
</body>
</html>