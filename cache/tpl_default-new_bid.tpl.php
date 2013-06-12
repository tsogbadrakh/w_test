<?php if ($this->_rootref['TQTY'] > (1)) {  ?>
<script type="text/javascript">
$(document).ready(function(){
	$("#qty").keydown(function(){
		$("#bidcost").text(($("#qty").val())*($("#bid").val()) + ' <?php echo (isset($this->_rootref['CURRENCY'])) ? $this->_rootref['CURRENCY'] : ''; ?>');
	});
	$("#bid").keydown(function(){
		$("#bidcost").text(($("#qty").val())*($("#bid").val()) + ' <?php echo (isset($this->_rootref['CURRENCY'])) ? $this->_rootref['CURRENCY'] : ''; ?>');
	});
});
</script>
<?php } ?>
<div class="content">
	<div class="tableContent2">
		<div class="titTable2 rounded-top rounded-bottom">
			<?php if ($this->_rootref['PAGE'] == (1)) {  echo ((isset($this->_rootref['L_152'])) ? $this->_rootref['L_152'] : ((isset($MSG['152'])) ? $MSG['152'] : '{ L_152 }')); } else { echo ((isset($this->_rootref['L_271'])) ? $this->_rootref['L_271'] : ((isset($MSG['271'])) ? $MSG['271'] : '{ L_271 }')); } ?>
		</div>
		<div class="titTable3">
			<a href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>item.php?id=<?php echo (isset($this->_rootref['ID'])) ? $this->_rootref['ID'] : ''; ?>"><?php echo ((isset($this->_rootref['L_138'])) ? $this->_rootref['L_138'] : ((isset($MSG['138'])) ? $MSG['138'] : '{ L_138 }')); ?></a><?php echo (isset($this->_rootref['BID_HISTORY'])) ? $this->_rootref['BID_HISTORY'] : ''; ?>
		</div>
		<div class="table2 padding" style="text-align:center;">
<?php if ($this->_rootref['PAGE'] == (1)) {  if ($this->_rootref['ERROR'] != ('')) {  ?>
			<div class="errfont">
				<?php echo (isset($this->_rootref['ERROR'])) ? $this->_rootref['ERROR'] : ''; ?>
			</div>
	<?php } ?>
			<form name="bid" action="<?php echo (isset($this->_rootref['ASSLURL'])) ? $this->_rootref['ASSLURL'] : ''; ?>bid.php" method="post">
            <input type="hidden" name="csrftoken" value="<?php echo (isset($this->_rootref['_CSRFTOKEN'])) ? $this->_rootref['_CSRFTOKEN'] : ''; ?>">
			<table width="60%" border=0 cellpadding="4" style="text-align:left;">
				<tr>
					<td rowspan="6"><?php echo (isset($this->_rootref['IMAGE'])) ? $this->_rootref['IMAGE'] : ''; ?></td>
					<td><b><?php echo ((isset($this->_rootref['L_154'])) ? $this->_rootref['L_154'] : ((isset($MSG['154'])) ? $MSG['154'] : '{ L_154 }')); ?></b></td>
					<td><?php echo (isset($this->_rootref['TITLE'])) ? $this->_rootref['TITLE'] : ''; ?></td>
				</tr>
				<tr bgcolor="#FFFEEE">
					<td><b><?php echo ((isset($this->_rootref['L_116'])) ? $this->_rootref['L_116'] : ((isset($MSG['116'])) ? $MSG['116'] : '{ L_116 }')); ?></b></td>
					<td><?php echo (isset($this->_rootref['CURRENT_BID'])) ? $this->_rootref['CURRENT_BID'] : ''; ?></td>
				</tr>
				<tr>
					<td><b><?php echo ((isset($this->_rootref['L_156'])) ? $this->_rootref['L_156'] : ((isset($MSG['156'])) ? $MSG['156'] : '{ L_156 }')); ?></b></td>
					<td><input type="text" size="5" name="bid" id="bid" value="<?php echo (isset($this->_rootref['BID'])) ? $this->_rootref['BID'] : ''; ?>">
						<?php if ($this->_rootref['ATYPE'] == (1)) {  ?>(<?php echo ((isset($this->_rootref['L_283'])) ? $this->_rootref['L_283'] : ((isset($MSG['283'])) ? $MSG['283'] : '{ L_283 }')); ?>: <?php echo (isset($this->_rootref['NEXT_BID'])) ? $this->_rootref['NEXT_BID'] : ''; ?>)<?php } ?></td>
				</tr>
	<?php if ($this->_rootref['TQTY'] > (1)) {  ?>
				<tr bgcolor="#FFFEEE">
					<td><b><?php echo ((isset($this->_rootref['L_284'])) ? $this->_rootref['L_284'] : ((isset($MSG['284'])) ? $MSG['284'] : '{ L_284 }')); ?>:</b></td>
					<td><input type="text" size="3" name="qty" id="qty" value="<?php echo (isset($this->_rootref['QTY'])) ? $this->_rootref['QTY'] : ''; ?>">
					</td>
				</tr>
	<?php } if ($this->_rootref['B_USERAUTH']) {  ?>
				<tr>
					<td><b><?php echo ((isset($this->_rootref['L_003'])) ? $this->_rootref['L_003'] : ((isset($MSG['003'])) ? $MSG['003'] : '{ L_003 }')); ?></b></td>
					<td><b><?php echo (isset($this->_rootref['YOURUSERNAME'])) ? $this->_rootref['YOURUSERNAME'] : ''; ?></b>
					</td>
				</tr>
				<tr bgcolor="#FFFEEE">
					<td><b><?php echo ((isset($this->_rootref['L_004'])) ? $this->_rootref['L_004'] : ((isset($MSG['004'])) ? $MSG['004'] : '{ L_004 }')); ?></b></td>
					<td><input type="password" name="password" size="20"  value="">
					</td>
				</tr>
	<?php } ?>
			</table>
			<div style="text-align:center; margin-top:20px;">
				<input type="hidden" name="id" value="<?php echo (isset($this->_rootref['ID'])) ? $this->_rootref['ID'] : ''; ?>">
				<p><?php echo (isset($this->_rootref['AGREEMENT'])) ? $this->_rootref['AGREEMENT'] : ''; ?></p>
				<input type="hidden" name="action" value="bid">
				<input type="submit" name="Input" value="<?php echo ((isset($this->_rootref['L_5199'])) ? $this->_rootref['L_5199'] : ((isset($MSG['5199'])) ? $MSG['5199'] : '{ L_5199 }')); ?>" class="button">
			</div>
			</form>
<?php } else { ?>
			<?php echo ((isset($this->_rootref['L_272'])) ? $this->_rootref['L_272'] : ((isset($MSG['272'])) ? $MSG['272'] : '{ L_272 }')); ?>&nbsp;
			<a href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>item.php?id=<?php echo (isset($this->_rootref['ID'])) ? $this->_rootref['ID'] : ''; ?>"><?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>item.php?id=<?php echo (isset($this->_rootref['ID'])) ? $this->_rootref['ID'] : ''; ?></a><br>
			<?php echo ((isset($this->_rootref['L_699'])) ? $this->_rootref['L_699'] : ((isset($MSG['699'])) ? $MSG['699'] : '{ L_699 }')); ?> <?php echo (isset($this->_rootref['BID'])) ? $this->_rootref['BID'] : ''; ?> <?php echo ((isset($this->_rootref['L_700'])) ? $this->_rootref['L_700'] : ((isset($MSG['700'])) ? $MSG['700'] : '{ L_700 }')); ?>
<?php } ?>
		</div>
	</div>
</div>