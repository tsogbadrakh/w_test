<div class="content">
	<div class="titTable2 rounded-top rounded-bottom">
		<?php echo ((isset($this->_rootref['L_5030'])) ? $this->_rootref['L_5030'] : ((isset($MSG['5030'])) ? $MSG['5030'] : '{ L_5030 }')); ?>
	</div>
	<div class="padding" align="center">
		<table width="90%" border="0" cellspacing="1" cellpadding="4" align="center">
			<tr>
				<th width="50%" valign="top">
					<?php echo ((isset($this->_rootref['L_5034'])) ? $this->_rootref['L_5034'] : ((isset($MSG['5034'])) ? $MSG['5034'] : '{ L_5034 }')); ?>
				</th>
				<th width="25%" valign="top">
					<?php echo ((isset($this->_rootref['L_5043'])) ? $this->_rootref['L_5043'] : ((isset($MSG['5043'])) ? $MSG['5043'] : '{ L_5043 }')); ?>
				</th>
				<th width="25%" valign="top">
					<?php echo ((isset($this->_rootref['L_5053'])) ? $this->_rootref['L_5053'] : ((isset($MSG['5053'])) ? $MSG['5053'] : '{ L_5053 }')); ?>
				</th>
			</tr>
<?php $_boards_count = (isset($this->_tpldata['boards'])) ? sizeof($this->_tpldata['boards']) : 0;if ($_boards_count) {for ($_boards_i = 0; $_boards_i < $_boards_count; ++$_boards_i){$_boards_val = &$this->_tpldata['boards'][$_boards_i]; ?>
			<tr bgcolor="#EEEEEE">
				<td width="50%" valign="top">
					<a href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>msgboard.php?board_id=<?php echo $_boards_val['ID']; ?>"><?php echo $_boards_val['NAME']; ?></a>
				</td>
				<td width="25%" valign="top" align="center">
					<?php echo $_boards_val['NUMMSG']; ?>
				</td>
				<td width="25%" valign="top" align="center">
					<?php echo $_boards_val['LASTMSG']; ?>
				</td>
			</tr>
<?php }} ?>
		</table>
	</div>
</div>