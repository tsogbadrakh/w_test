<div class="content">
	<div class="titTable2">
		<?php echo ((isset($this->_rootref['L_181'])) ? $this->_rootref['L_181'] : ((isset($MSG['181'])) ? $MSG['181'] : '{ L_181 }')); ?>
	</div>
	<div class="table2">
		<form name="user_login" action="<?php echo (isset($this->_rootref['SSLURL'])) ? $this->_rootref['SSLURL'] : ''; ?>user_login.php" method="post">
			<table width="100%" cellspacing="0" cellpadding="4" border="0">
<?php if ($this->_rootref['ERROR'] != ('')) {  ?>
                <tr>
                	<td colspan="2" class="errfont"><?php echo (isset($this->_rootref['ERROR'])) ? $this->_rootref['ERROR'] : ''; ?></td>
                </tr>
<?php } ?>
				<tr>
					<td width="40%" align="right"><b><?php echo ((isset($this->_rootref['L_187'])) ? $this->_rootref['L_187'] : ((isset($MSG['187'])) ? $MSG['187'] : '{ L_187 }')); ?></b> </td>
					<td width="60%">
						<input type="text" name="username" size="20" maxlength="20" value="<?php echo (isset($this->_rootref['USER'])) ? $this->_rootref['USER'] : ''; ?>">
					</td>
				</tr>
				<tr>
					<td align="right"><b><?php echo ((isset($this->_rootref['L_004'])) ? $this->_rootref['L_004'] : ((isset($MSG['004'])) ? $MSG['004'] : '{ L_004 }')); ?></b> </td>
					<td>
						<input type="password" name="password" size="20" maxlength="20" value="">
					</td>
				</tr>
				<tr>
					<td align="right">&nbsp;</td>
					<td>
						<input type="checkbox" name="rememberme" value="1">&nbsp;<?php echo ((isset($this->_rootref['L_25_0085'])) ? $this->_rootref['L_25_0085'] : ((isset($MSG['25_0085'])) ? $MSG['25_0085'] : '{ L_25_0085 }')); ?>
					</td>
				</tr>
				<tr>
					<td align="right">&nbsp;</td>
					<td>
						<input type="submit" name="" value="<?php echo ((isset($this->_rootref['L_052'])) ? $this->_rootref['L_052'] : ((isset($MSG['052'])) ? $MSG['052'] : '{ L_052 }')); ?>"  class="button">
						<input type="hidden" name="action" value="login">
					</td>
				</tr>
				<tr>
					<td align="right">&nbsp;</td>
					<td><a href="forgotpasswd.php"><?php echo ((isset($this->_rootref['L_215'])) ? $this->_rootref['L_215'] : ((isset($MSG['215'])) ? $MSG['215'] : '{ L_215 }')); ?></a> </td>
				</tr>
			</table>
		</form>
	</div>
</div>