<?php

// load Smarty library
define('SMARTY_DIR', 'c:/xampp/Smarty/libs/');

require_once(SMARTY_DIR . 'Smarty.class.php');

// The setup.php file is a good place to load
// required application library files, and you
// can do that right here. An example:
// require('guestbook/guestbook.lib.php');

class Smarty_Init extends Smarty {
    
   var $data_arr = array();

   function __construct()
   {

        // Class Constructor.
        // These automatically get set with each new instance.

        parent::__construct();

        $this->setTemplateDir('../../htdocs/WeBid/templates/');
        $this->setCompileDir('../../htdocs/WeBid/templates_c/');
        $this->setConfigDir('../../htdocs/WeBid/configs/');
        $this->setCacheDir('../../htdocs/WeBid/cache/');

        $this->caching = Smarty::CACHING_LIFETIME_CURRENT;
        
        $this->configLoad('eng.conf');
   }
   
   // COLLECTING ARRAYS
   function collect_vars ($array)
   {
       $row_count = (isset($this->data_arr)) ? sizeof($this->data_arr) : 0;
       $this->data_arr[($row_count - 1)] = $array;
   }
   //ASSIGN FOR ARRAYS
   function assign_blk ($name)
   {
       if(empty($this->data_arr)) return;
       
       $this->assign($name, $this->data_arr);
       
       $this->data_arr = array();
   }

}
?>
