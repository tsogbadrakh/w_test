<?php $this->_tpl_include('header.tpl'); ?>
    	<div style="width:25%; float:left;">
            <div style="margin-left:auto; margin-right:auto;">
            	<?php $this->_tpl_include('sidebar-' . ((isset($this->_rootref['CURRENT_PAGE'])) ? $this->_rootref['CURRENT_PAGE'] : '') . '.tpl'); ?>
            </div>
        </div>
    	<div style="width:75%; float:right;">
            <div class="main-box">
            	<h4 class="rounded-top rounded-bottom"><?php echo ((isset($this->_rootref['L_25_0009'])) ? $this->_rootref['L_25_0009'] : ((isset($MSG['25_0009'])) ? $MSG['25_0009'] : '{ L_25_0009 }')); ?>&nbsp;&gt;&gt;&nbsp;<?php echo ((isset($this->_rootref['L_30_0031'])) ? $this->_rootref['L_30_0031'] : ((isset($MSG['30_0031'])) ? $MSG['30_0031'] : '{ L_30_0031 }')); ?></h4>
				<form name="errorlog" action="" method="post">
<?php if ($this->_rootref['ERROR'] != ('')) {  ?>
					<div class="error-box"><b><?php echo (isset($this->_rootref['ERROR'])) ? $this->_rootref['ERROR'] : ''; ?></b></div>
<?php } ?>
                    <?php echo ((isset($this->_rootref['L_30_0032'])) ? $this->_rootref['L_30_0032'] : ((isset($MSG['30_0032'])) ? $MSG['30_0032'] : '{ L_30_0032 }')); ?>
                    <input type="hidden" name="action" value="update">
                    <input type="hidden" name="csrftoken" value="<?php echo (isset($this->_rootref['_CSRFTOKEN'])) ? $this->_rootref['_CSRFTOKEN'] : ''; ?>">
                    <input type="submit" name="act" class="centre" value="<?php echo ((isset($this->_rootref['L_30_0031'])) ? $this->_rootref['L_30_0031'] : ((isset($MSG['30_0031'])) ? $MSG['30_0031'] : '{ L_30_0031 }')); ?>">
				</form>
            </div>
        </div>
<?php $this->_tpl_include('footer.tpl'); ?>