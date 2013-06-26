<?php

// load Smarty library
define('SMARTY_DIR', 'c:/xampp/Smarty/libs/');

require_once(SMARTY_DIR . 'Smarty.class.php');

// The setup.php file is a good place to load
// required application library files, and you
// can do that right here. An example:
// require('guestbook/guestbook.lib.php');

class Smarty_Init extends Smarty {
    
   function __construct()
   {

        // Class Constructor.
        // These automatically get set with each new instance.

        parent::__construct();

        $this->setTemplateDir('../../htdocs/WeBid/templates/');
        $this->setCompileDir('../../htdocs/WeBid/templates_c/');
        $this->setConfigDir('../../htdocs/WeBid/configs/');
        $this->setCacheDir('../../htdocs/WeBid/cache/');

        $this->clearAllCache();
//        $this->setCaching(1);
        
        $this->configLoad('eng.conf');
   }
}
?>
