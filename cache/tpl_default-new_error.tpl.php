<div align="center">
<table width="100%" border="0" cellpadding="4" cellspacing="0">
<?php if ($this->_rootref['DEBUGGING']) {  ?>
	<tr> 
		<td bgcolor="#eeeeee">
			<b><?php echo ((isset($this->_rootref['L_415'])) ? $this->_rootref['L_415'] : ((isset($MSG['415'])) ? $MSG['415'] : '{ L_415 }')); ?></b><?php echo (isset($this->_rootref['ERROR'])) ? $this->_rootref['ERROR'] : ''; ?>
		</td>
	</tr>
<?php } ?>
	<tr> 
		<td>
			<?php echo (isset($this->_rootref['ERRORTXT'])) ? $this->_rootref['ERRORTXT'] : ''; ?>
		</td>
	</tr>
</table>
</div>