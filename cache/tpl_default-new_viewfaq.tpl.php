<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html lang="en" dir="<?php echo (isset($this->_rootref['DOCDIR'])) ? $this->_rootref['DOCDIR'] : ''; ?>">
<head>
<title><?php echo (isset($this->_rootref['PAGE_TITLE'])) ? $this->_rootref['PAGE_TITLE'] : ''; ?></title>
<link rel="stylesheet" type="text/css" href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>themes/default/style.css">
<meta http-equiv="Content-Type" content="text/html; charset=<?php echo (isset($this->_rootref['CHARSET'])) ? $this->_rootref['CHARSET'] : ''; ?>">
</head>
<body>
<div class="container">
	<div id="logo">
		<?php echo (isset($this->_rootref['LOGO'])) ? $this->_rootref['LOGO'] : ''; ?>
	</div>
	<div class="content">
		<div class="tableContent3">
			<div class="titTable2">
				<?php echo ((isset($this->_rootref['L_5236'])) ? $this->_rootref['L_5236'] : ((isset($MSG['5236'])) ? $MSG['5236'] : '{ L_5236 }')); ?>
			</div>
			<div class="padding">
			<form name="faqsindex" action="viewfaqs.php" method="post">
            	<input type="hidden" name="csrftoken" value="<?php echo (isset($this->_rootref['_CSRFTOKEN'])) ? $this->_rootref['_CSRFTOKEN'] : ''; ?>">
                <select name="cat" onChange="document.faqsindex.submit()">
                    <option value="">- <?php echo (isset($this->_rootref['FNAME'])) ? $this->_rootref['FNAME'] : ''; ?> -</option>
<?php $_cats_count = (isset($this->_tpldata['cats'])) ? sizeof($this->_tpldata['cats']) : 0;if ($_cats_count) {for ($_cats_i = 0; $_cats_i < $_cats_count; ++$_cats_i){$_cats_val = &$this->_tpldata['cats'][$_cats_i]; ?>
					<option value="<?php echo $_cats_val['ID']; ?>"><?php echo $_cats_val['CAT']; ?></option>
<?php }} ?>
				</select>
                <div style="text-align:right">
                    <a href="faqs.php"><?php echo ((isset($this->_rootref['L_5243'])) ? $this->_rootref['L_5243'] : ((isset($MSG['5243'])) ? $MSG['5243'] : '{ L_5243 }')); ?></a> | <a href="javascript:window.close()"><?php echo ((isset($this->_rootref['L_678'])) ? $this->_rootref['L_678'] : ((isset($MSG['678'])) ? $MSG['678'] : '{ L_678 }')); ?></a>
                </div>
			</form>
			<h1><?php echo (isset($this->_rootref['FNAME'])) ? $this->_rootref['FNAME'] : ''; ?></h1>
			<ul>
<?php $_faqs_count = (isset($this->_tpldata['faqs'])) ? sizeof($this->_tpldata['faqs']) : 0;if ($_faqs_count) {for ($_faqs_i = 0; $_faqs_i < $_faqs_count; ++$_faqs_i){$_faqs_val = &$this->_tpldata['faqs'][$_faqs_i]; ?>  
				<li><a href="#faq<?php echo $_faqs_val['ID']; ?>"><?php echo $_faqs_val['Q']; ?></a></li>
<?php }} ?>
			</ul>
<?php $_faqs_count = (isset($this->_tpldata['faqs'])) ? sizeof($this->_tpldata['faqs']) : 0;if ($_faqs_count) {for ($_faqs_i = 0; $_faqs_i < $_faqs_count; ++$_faqs_i){$_faqs_val = &$this->_tpldata['faqs'][$_faqs_i]; ?>
            <a name="faq<?php echo $_faqs_val['ID']; ?>"></a>
            <h1><?php echo $_faqs_val['Q']; ?></h1>
            <p><?php echo $_faqs_val['A']; ?></p>
            <p style="text-align:right"><a href="#top"><?php echo ((isset($this->_rootref['L_5245'])) ? $this->_rootref['L_5245'] : ((isset($MSG['5245'])) ? $MSG['5245'] : '{ L_5245 }')); ?></a></p>
<?php }} ?>
			</div>
		</div>
	</div>
</div>
</body>
</html>