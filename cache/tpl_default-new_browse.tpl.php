<?php if ($this->_rootref['B_FEATURED_ITEMS']) {  ?>
	<table width="98%" border="0" cellspacing="1" cellpadding="4">
		<tr>
			<th width="9%" align="center" height="5">
				<?php echo ((isset($this->_rootref['L_167'])) ? $this->_rootref['L_167'] : ((isset($MSG['167'])) ? $MSG['167'] : '{ L_167 }')); ?>
			</th>
			<th width="49%" height="5" align="center">
				<?php echo ((isset($this->_rootref['L_168'])) ? $this->_rootref['L_168'] : ((isset($MSG['168'])) ? $MSG['168'] : '{ L_168 }')); ?>
			</th>
			<th width="14%" height="5" align="center">
				<?php echo ((isset($this->_rootref['L_169'])) ? $this->_rootref['L_169'] : ((isset($MSG['169'])) ? $MSG['169'] : '{ L_169 }')); ?>
			</th>
			<th width="14%" height="5" align="center">
				<?php echo ((isset($this->_rootref['L_170'])) ? $this->_rootref['L_170'] : ((isset($MSG['170'])) ? $MSG['170'] : '{ L_170 }')); ?>
			</th>
			<th width="14%" align="center" height="5">
				<?php echo ((isset($this->_rootref['L_171'])) ? $this->_rootref['L_171'] : ((isset($MSG['171'])) ? $MSG['171'] : '{ L_171 }')); ?>
			</th>
		</tr>
    <?php $_featured_items_count = (isset($this->_tpldata['featured_items'])) ? sizeof($this->_tpldata['featured_items']) : 0;if ($_featured_items_count) {for ($_featured_items_i = 0; $_featured_items_i < $_featured_items_count; ++$_featured_items_i){$_featured_items_val = &$this->_tpldata['featured_items'][$_featured_items_i]; ?>
		<tr align="center" <?php echo $_featured_items_val['ROWCOLOUR']; if ($_featured_items_val['B_BOLD']) {  ?> style="font-weight: bold;"<?php } ?>>
			<td align="center">
				<?php echo $_featured_items_val['IMAGE']; ?>
			</td>
			<td align="left">
                <?php echo $_featured_items_val['TITLE']; ?> <?php echo $_featured_items_val['BUY_NOW']; ?>
				<?php if ($this->_rootref['B_SUBTITLE'] && $_featured_items_val['SUBTITLE'] != ('')) {  ?><p class="smallspan"><?php echo $_featured_items_val['SUBTITLE']; ?></p><?php } ?>
			</td>
			<td align="right">
				<?php echo $_featured_items_val['BIDFORM']; ?>
			</td>
			<td align="center">
				<?php echo $_featured_items_val['NUMBIDS']; ?>
			</td>
			<td align="center">
				<?php echo $_featured_items_val['TIMELEFT']; ?>
			</td>
		</tr>
    <?php }} ?>
	</table>
    <br class="spacer">
<?php } ?>

	<table width="98%" border="0" cellspacing="1" cellpadding="4">
		<tr>
			<th width="9%" align="center" height="5">
				<?php echo ((isset($this->_rootref['L_167'])) ? $this->_rootref['L_167'] : ((isset($MSG['167'])) ? $MSG['167'] : '{ L_167 }')); ?>
			</th>
			<th width="49%" height="5" align="center">
				<?php echo ((isset($this->_rootref['L_168'])) ? $this->_rootref['L_168'] : ((isset($MSG['168'])) ? $MSG['168'] : '{ L_168 }')); ?>
			</th>
			<th width="14%" height="5" align="center">
				<?php echo ((isset($this->_rootref['L_169'])) ? $this->_rootref['L_169'] : ((isset($MSG['169'])) ? $MSG['169'] : '{ L_169 }')); ?>
			</th>
			<th width="14%" height="5" align="center">
				<?php echo ((isset($this->_rootref['L_170'])) ? $this->_rootref['L_170'] : ((isset($MSG['170'])) ? $MSG['170'] : '{ L_170 }')); ?>
			</th>
			<th width="14%" align="center" height="5">
				<?php echo ((isset($this->_rootref['L_171'])) ? $this->_rootref['L_171'] : ((isset($MSG['171'])) ? $MSG['171'] : '{ L_171 }')); ?>
			</th>
		</tr>
<?php $_items_count = (isset($this->_tpldata['items'])) ? sizeof($this->_tpldata['items']) : 0;if ($_items_count) {for ($_items_i = 0; $_items_i < $_items_count; ++$_items_i){$_items_val = &$this->_tpldata['items'][$_items_i]; ?>
		<tr align="center" <?php echo $_items_val['ROWCOLOUR']; if ($_items_val['B_BOLD']) {  ?> style="font-weight: bold;"<?php } ?>>
			<td align="center">
				<?php echo $_items_val['IMAGE']; ?>
			</td>
			<td align="left">
                <?php echo $_items_val['TITLE']; ?> <?php echo $_items_val['BUY_NOW']; ?>
				<?php if ($this->_rootref['B_SUBTITLE'] && $_items_val['SUBTITLE'] != ('')) {  ?><p class="smallspan"><?php echo $_items_val['SUBTITLE']; ?></p><?php } ?>
			</td>
			<td align="right">
				<?php echo $_items_val['BIDFORM']; ?>
			</td>
			<td align="center">
				<?php echo $_items_val['NUMBIDS']; ?>
			</td>
			<td align="center">
				<?php echo $_items_val['TIMELEFT']; ?>
			</td>
		</tr>
<?php }} ?>
		<tr align="center">
			<td colspan="5"><?php echo (isset($this->_rootref['NUM_AUCTIONS'])) ? $this->_rootref['NUM_AUCTIONS'] : ''; ?></td>
		</tr>
	</table>
	<table width="100%" cellpadding="0" cellspacing="0" border="0">
		<tr>
			<td align="center">
				<?php echo ((isset($this->_rootref['L_5117'])) ? $this->_rootref['L_5117'] : ((isset($MSG['5117'])) ? $MSG['5117'] : '{ L_5117 }')); ?>&nbsp;<?php echo (isset($this->_rootref['PAGE'])) ? $this->_rootref['PAGE'] : ''; ?>&nbsp;<?php echo ((isset($this->_rootref['L_5118'])) ? $this->_rootref['L_5118'] : ((isset($MSG['5118'])) ? $MSG['5118'] : '{ L_5118 }')); ?>&nbsp;<?php echo (isset($this->_rootref['PAGES'])) ? $this->_rootref['PAGES'] : ''; ?>
				<br>
				<?php echo (isset($this->_rootref['PREV'])) ? $this->_rootref['PREV'] : ''; ?>
<?php $_pages_count = (isset($this->_tpldata['pages'])) ? sizeof($this->_tpldata['pages']) : 0;if ($_pages_count) {for ($_pages_i = 0; $_pages_i < $_pages_count; ++$_pages_i){$_pages_val = &$this->_tpldata['pages'][$_pages_i]; ?>
				<?php echo $_pages_val['PAGE']; ?>&nbsp;&nbsp;
<?php }} ?>
				<?php echo (isset($this->_rootref['NEXT'])) ? $this->_rootref['NEXT'] : ''; ?>
			</td>
		</tr>
	</table>