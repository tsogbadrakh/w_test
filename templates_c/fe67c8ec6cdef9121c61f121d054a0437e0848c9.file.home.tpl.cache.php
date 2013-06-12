<?php /* Smarty version Smarty-3.1.13, created on 2013-06-11 10:37:51
         compiled from "..\..\htdocs\WeBid\templates\home.tpl" */ ?>
<?php /*%%SmartyHeaderCode:16191519c771084a7a1-93369174%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'fe67c8ec6cdef9121c61f121d054a0437e0848c9' => 
    array (
      0 => '..\\..\\htdocs\\WeBid\\templates\\home.tpl',
      1 => 1370939605,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '16191519c771084a7a1-93369174',
  'function' => 
  array (
  ),
  'cache_lifetime' => 3600,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_519c77108f2cf8_47903937',
  'variables' => 
  array (
    'cat_list' => 0,
    'list' => 0,
    'B_HOT_ITEMS' => 0,
    'hotitems' => 0,
    'SITEURL' => 0,
    'ht' => 0,
    'B_AUC_LAST' => 0,
    'auc_last' => 0,
    'alast' => 0,
    'B_AUC_ENDSOON' => 0,
    'end_soon' => 0,
    'esoon' => 0,
    'B_FEATURE' => 0,
    'featured' => 0,
    'ft' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_519c77108f2cf8_47903937')) {function content_519c77108f2cf8_47903937($_smarty_tpl) {?><div class="wb-middle">
	<div class="main" id="main">
		<div class="top" id="top">
                    <!--[if IE 8]> 
                        <style>
                        .lftnav .cat .sub{ 
                                z-index:1000;
                                -ms-filter: "progid:DXImageTransform.Microsoft.Shadow(Strength=4, Direction=135, Color='#CCCCCC')";
                        } 
                        .lftnav.exp{
                                -ms-filter: "progid:DXImageTransform.Microsoft.Shadow(Strength=4, Direction=135, Color='#CCCCCC')";
                        }
                        .lftnav .cat.show .rt{
                                -ms-filter: "progid:DXImageTransform.Microsoft.Shadow(Strength=4, Direction=135, Color='#CCCCCC')";
                        }
                        </style>
                    <![endif]-->
                    <div class="wb-left-menu lftnav">
                        <ul>
                            <li class="cat">
                                
                                <div id=0 aria-haspopup="true" role="menuitem" _sp="p2050601.m1380.l3250" class="rt"><?php echo $_smarty_tpl->getConfigVariable('L_277');?>
</div>
                                <div role="menu" class="sub">
                                    <ul class="col">
                                            <li class="title">Top categories</li>
                                            <li class="icn"><a aria-haspopup="false" role="menuitem" _sp="p2050601.m1380.l3265" href="http://www.ebay.com/fashion/mens-clothing"> 
                                                    <img src="http://p.ebaystatic.com/aw/pics/fd/hp/i2/mns.gif">Men's</a>
                                            </li>
                                            <li class="icn"><a aria-haspopup="false" role="menuitem" _sp="p2050601.m1380.l3265" href="http://www.ebay.com/fashion/womens-clothing">
                                                    <img src="http://p.ebaystatic.com/aw/pics/fd/hp/i2/faw.gif">Women's</a>
                                            </li>
                                            <li class="icn"><a aria-haspopup="false" role="menuitem" _sp="p2050601.m1380.l3265" href="http://www.ebay.com/fashion/kids-baby"> 
                                                    <img src="http://p.ebaystatic.com/aw/pics/fd/hp/i2/knb.gif">Kids &amp; Baby</a>
                                            </li>
                                    </ul>
                                    <ul class="col">
                                            <li class="title">Shop for</li>
                                            <li class=""><a aria-haspopup="false" role="menuitem"
                                                    _sp="p2050601.m1380.l3265"
                                                    href="http://www.ebay.com/fashion/outlet"> Fashion Outlet
                                                            &ndash; up to 65% off</a></li>
                                            <li class=""><a aria-haspopup="false" role="menuitem"
                                                    _sp="p2050601.m1380.l3265"
                                                    href="http://www.ebay.com/fashion/handbags"> Handbags &amp;
                                                            Accessories</a></li>
                                            <li class=""><a aria-haspopup="false" role="menuitem"
                                                    _sp="p2050601.m1380.l3265"
                                                    href="http://www.ebay.com/fashion/health-beauty"> Health
                                                            &amp; Beauty</a></li>
                                            <li class=""><a aria-haspopup="false" role="menuitem"
                                                    _sp="p2050601.m1380.l3265"
                                                    href="http://www.ebay.com/brw/fashion/sales-events"> Sales
                                                            &amp; Events</a></li>
                                    </ul>
                                    <div class="clr"></div>
                                </div>
                            </li>
                            <?php  $_smarty_tpl->tpl_vars['list'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['list']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['cat_list']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['list']->key => $_smarty_tpl->tpl_vars['list']->value){
$_smarty_tpl->tpl_vars['list']->_loop = true;
?>
                                <li class="scat">
                                    <!-- background-color:<?php echo $_smarty_tpl->tpl_vars['list']->value['COLOUR'];?>
 -->
                                    
                                    <div id="<?php echo $_smarty_tpl->tpl_vars['list']->value['ID'];?>
" aria-haspopup="true" _sp="p2050601.m2329" class="rt" name="mainmenu">
                                        <?php echo $_smarty_tpl->tpl_vars['list']->value['IMAGE'];?>
<?php echo $_smarty_tpl->tpl_vars['list']->value['NAME'];?>

                                    </div>
                                </li>
                            <?php } ?>
                        </ul>
                    </div>
                    <div class="wb-contents">
                        <div class="mfbb">
                                <ul class="frms">
                                    <li class="frm fst" style="opacity: 1; display: block;">
                                        <div style="display:block; background: url(http://rtm.ebaystatic.com/900/RTMS/Image/EN_deals_980x270.jpg)" class="w980 " id="mfbb-gbh">
                                                <div class="item item1">
                                                    <span class="i">
                                                        <span>
                                                            <b></b>
                                                            <a href="#">
                                                                <img title="" alt="" src="">
                                                            </a>
                                                        </span>
                                                    </span>
                                                    <span class="t"><a href="">EEEEEEEE</a></span>
                                                    <span class="p">ERRRERE</span>
                                                </div>
                                        </div>
                                    </li>
                                    <?php if ($_smarty_tpl->tpl_vars['B_HOT_ITEMS']->value){?>
                                    <div class="pnlShowcase" id="ctl00_cphBody_ctlCategorySet12_pnlItems">
                                        <li class="frm fst" style="opacity: 1; display: block;">
                                            <h2 class="section-header"><?php echo $_smarty_tpl->getConfigVariable('L_279');?>
</h2>
                                            <?php  $_smarty_tpl->tpl_vars['ht'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['ht']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['hotitems']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['ht']->key => $_smarty_tpl->tpl_vars['ht']->value){
$_smarty_tpl->tpl_vars['ht']->_loop = true;
?>
                                            <div class="feature" id="ctl00_cphBody_ctlCategorySet12_lvwFeatured_ctrl0_pnlFeature">

                                                    <div class="saving-label-large" title="" id="ctl00_cphBody_ctlCategorySet12_lvwFeatured_ctrl0_pnlSavingCircle">Save 38%</div>
                                                    <a target="_blank" class="img-container" id="ctl00_cphBody_ctlCategorySet12_lvwFeatured_ctrl0_aImgLink" href="<?php echo $_smarty_tpl->tpl_vars['SITEURL']->value;?>
item.php?id=<?php echo $_smarty_tpl->tpl_vars['ht']->value['ID'];?>
">
                                                        <img class="gallery-image" alt="" src="<?php echo $_smarty_tpl->tpl_vars['ht']->value['IMAGE'];?>
" style="width: 170px; height: 103px;">
                                                    </a>
                                                    <br> 
                                                    <a target="_blank" class="description" id="ctl00_cphBody_ctlCategorySet12_lvwFeatured_ctrl0_aDescLink"
                                                            href="<?php echo $_smarty_tpl->tpl_vars['SITEURL']->value;?>
item.php?id=<?php echo $_smarty_tpl->tpl_vars['ht']->value['ID'];?>
"><?php echo $_smarty_tpl->tpl_vars['ht']->value['TITLE'];?>
</a> 
                                                    <span class="price"><?php echo $_smarty_tpl->tpl_vars['ht']->value['BID'];?>
</span>
                                            </div>
                                            <?php } ?>
                                            <div class="see-all-cat">
                                                    <a href="<?php echo $_smarty_tpl->tpl_vars['SITEURL']->value;?>
browse.php?id=0" class="see-cat-button" id="ctl00_cphBody_ctlCategorySet12_lvwFeatured_hypSeeAllButton">
                                                        See more deals in Even More Deals <img alt="" src="http://new.static.ebay.com.au/cache/windows/sites/deals/deals-cat-arrow.png">
                                                    </a>
                                                    <div class="see-cat-footer"></div>
                                            </div>
                                        </li>
                                    </div>
                                    <?php }?>
                                    <?php if ($_smarty_tpl->tpl_vars['B_AUC_LAST']->value){?>
                                    <div class="pnlShowcase" id="ctl00_cphBody_ctlCategorySet12_pnlItems">
                                        <li class="frm fst" style="opacity: 1; display: block;">
                                            <h2 class="section-header"><?php echo $_smarty_tpl->getConfigVariable('L_278');?>
</h2>
                                            <?php  $_smarty_tpl->tpl_vars['alast'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['alast']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['auc_last']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['alast']->key => $_smarty_tpl->tpl_vars['alast']->value){
$_smarty_tpl->tpl_vars['alast']->_loop = true;
?>
                                            <div class="feature" id="ctl00_cphBody_ctlCategorySet12_lvwFeatured_ctrl0_pnlFeature" <?php echo $_smarty_tpl->tpl_vars['auc_last']->value['BGCOLOUR'];?>
>
                                                    <div class="saving-label-large" title="" id="ctl00_cphBody_ctlCategorySet12_lvwFeatured_ctrl0_pnlSavingCircle">Save XX%</div>
                                                    <a target="_blank" class="img-container" id="ctl00_cphBody_ctlCategorySet12_lvwFeatured_ctrl0_aImgLink" href="<?php echo $_smarty_tpl->tpl_vars['SITEURL']->value;?>
item.php?id=<?php echo $_smarty_tpl->tpl_vars['alast']->value['ID'];?>
">
                                                        <img class="gallery-image" alt="" src="" style="width: 170px; height: 103px;">
                                                    </a>
                                                    <br> 
                                                    <a target="_blank" class="description" id="ctl00_cphBody_ctlCategorySet12_lvwFeatured_ctrl0_aDescLink"
                                                            href="<?php echo $_smarty_tpl->tpl_vars['SITEURL']->value;?>
item.php?id=<?php echo $_smarty_tpl->tpl_vars['alast']->value['ID'];?>
"><?php echo $_smarty_tpl->tpl_vars['alast']->value['TITLE'];?>
</a> 
                                                    <span class="price"></span>
                                            </div>
                                            <?php } ?>
                                            <div class="see-all-cat">
                                                    <a href="<?php echo $_smarty_tpl->tpl_vars['SITEURL']->value;?>
browse.php?id=0" class="see-cat-button" id="ctl00_cphBody_ctlCategorySet12_lvwFeatured_hypSeeAllButton">
                                                        See more deals in Even More Deals <img alt="" src="http://new.static.ebay.com.au/cache/windows/sites/deals/deals-cat-arrow.png">
                                                    </a>
                                                    <div class="see-cat-footer"></div>
                                            </div>
                                        </li>
                                    </div>
                                    <?php }?>
                                    <?php if ($_smarty_tpl->tpl_vars['B_AUC_ENDSOON']->value){?>
                                    <div class="pnlShowcase" id="ctl00_cphBody_ctlCategorySet12_pnlItems">
                                        <li class="frm fst" style="opacity: 1; display: block;">
                                            <h2 class="section-header"><?php echo $_smarty_tpl->getConfigVariable('L_280');?>
</h2>
                                            <?php  $_smarty_tpl->tpl_vars['esoon'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['esoon']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['end_soon']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['esoon']->key => $_smarty_tpl->tpl_vars['esoon']->value){
$_smarty_tpl->tpl_vars['esoon']->_loop = true;
?>
                                            <div class="feature" id="ctl00_cphBody_ctlCategorySet12_lvwFeatured_ctrl0_pnlFeature" <?php echo $_smarty_tpl->tpl_vars['esoon']->value['BGCOLOUR'];?>
>
                                                    <div class="saving-label-large" title="" id="ctl00_cphBody_ctlCategorySet12_lvwFeatured_ctrl0_pnlSavingCircle">Save XX%</div>
                                                    <a target="_blank" class="img-container" id="ctl00_cphBody_ctlCategorySet12_lvwFeatured_ctrl0_aImgLink" href="<?php echo $_smarty_tpl->tpl_vars['SITEURL']->value;?>
item.php?id=<?php echo $_smarty_tpl->tpl_vars['esoon']->value['ID'];?>
">
                                                        <img class="gallery-image" alt="" src="" style="width: 170px; height: 103px;">
                                                    </a>
                                                    <br> 
                                                    <a target="_blank" class="description" id="ctl00_cphBody_ctlCategorySet12_lvwFeatured_ctrl0_aDescLink"
                                                            href="<?php echo $_smarty_tpl->tpl_vars['SITEURL']->value;?>
item.php?id=<?php echo $_smarty_tpl->tpl_vars['esoon']->value['ID'];?>
"><?php echo $_smarty_tpl->tpl_vars['esoon']->value['TITLE'];?>
</a> 
                                                    <span class="price"><?php echo $_smarty_tpl->tpl_vars['esoon']->value['DATE'];?>
</span>
                                            </div>
                                            <?php } ?>
                                            <div class="see-all-cat">
                                                    <a href="<?php echo $_smarty_tpl->tpl_vars['SITEURL']->value;?>
browse.php?id=0" class="see-cat-button" id="ctl00_cphBody_ctlCategorySet12_lvwFeatured_hypSeeAllButton">
                                                        See more deals in Even More Deals <img alt="" src="http://new.static.ebay.com.au/cache/windows/sites/deals/deals-cat-arrow.png">
                                                    </a>
                                                    <div class="see-cat-footer"></div>
                                            </div>
                                        </li>
                                    </div>
                                    <?php }?>
                                </ul>
                                <span class="pngwp" style="display: block;">
                                    <b class="pg sel">1</b>
                                    <b class="pg">2</b>
                                    <b class="pg">3</b>
                                    <b class="pg">4</b>
                                </span>
                        </div>
                        <div class="mfbb">
                            <div class="actvbar">
                                    <a class="anchor" name="activityBar"></a>
                                    <ul class="btns">
                                        <li class=""><h2 class="myfeed">Hot Item</h2></li>
                                        <li class="sel"><h2>Featured</h2></li>
                                        <li class=""><h2>Recently added</h2></li>
                                        <li class="unclkable"><h2>Ending Soon</h2></li>
                                    </ul>
                                    <div class="float-right">
                                            <div class="stby">
                                                    <div class="sortby">
                                                            <div class="txt">
                                                                    <span>|</span>Sort by:
                                                            </div>
                                                            <ul class="mu">
                                                                    <li class="arr"></li>
                                                                    <li class="mitm tnl choosen">Recently added</li>
                                                                    <li class="divd"></li>
                                                                    <li class="mitm tes unchoosen">Ending soonest</li>
                                                            </ul>
                                                    </div>
                                            </div>
                                    </div>
                                    <div class="clr"></div>
                            </div>
                            <div class="tab index1">
                                <?php if ($_smarty_tpl->tpl_vars['B_FEATURE']->value){?>
                                    <?php  $_smarty_tpl->tpl_vars['ft'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['ft']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['featured']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['ft']->key => $_smarty_tpl->tpl_vars['ft']->value){
$_smarty_tpl->tpl_vars['ft']->_loop = true;
?>
                                         <div watched="false" class="feed" itemid="161034164792" wt="0723578f629b13cce644b5a7f46f290e">
                                             <a class="icn" href="<?php echo $_smarty_tpl->tpl_vars['SITEURL']->value;?>
item.php?id=<?php echo $_smarty_tpl->tpl_vars['ft']->value['ID'];?>
">
                                                 <img  src="<?php echo $_smarty_tpl->tpl_vars['ft']->value['IMAGE'];?>
" style="width: 225px;" title="<?php echo $_smarty_tpl->tpl_vars['ft']->value['TITLE'];?>
" alt="<?php echo $_smarty_tpl->tpl_vars['ft']->value['TITLE'];?>
" ></a> 
                                                 <a class="vi" title="<?php echo $_smarty_tpl->tpl_vars['ft']->value['TITLE'];?>
" href="<?php echo $_smarty_tpl->tpl_vars['SITEURL']->value;?>
item.php?id=<?php echo $_smarty_tpl->tpl_vars['ft']->value['ID'];?>
">
                                                     <?php echo $_smarty_tpl->tpl_vars['ft']->value['TITLE'];?>

                                                 </a>
                                             <div class="hvrnfo">
                                                 <div class="pdd">
                                                     <div>
                                                             <a href="<?php echo $_smarty_tpl->tpl_vars['SITEURL']->value;?>
item.php?id=<?php echo $_smarty_tpl->tpl_vars['ft']->value['ID'];?>
" class="pra">
                                                                 <?php echo $_smarty_tpl->tpl_vars['ft']->value['TITLE'];?>

                                                             </a>
                                                     </div>
                                                     <div class="prc"><?php echo $_smarty_tpl->tpl_vars['ft']->value['BID'];?>
</div>
                                                 </div>
                                             </div>
                                             <div class="more clr" style="">
                                                 <a title="iphone" href="" class="moreintr">iphone<b></b></a>
                                                 <span data-list-time="1369634465000" class="time"> Added 1m ago</span>
                                             </div>
                                             <div class="btns">
                                                 <a data-unwatch-url="<?php echo $_smarty_tpl->tpl_vars['SITEURL']->value;?>
item.php?id=<?php echo $_smarty_tpl->tpl_vars['ft']->value['ID'];?>
" data-watch-url="<?php echo $_smarty_tpl->tpl_vars['SITEURL']->value;?>
item.php?id=<?php echo $_smarty_tpl->tpl_vars['ft']->value['ID'];?>
" class="watch" href="#"><i>Watch</i></a> 
                                                 <a class="rmv" title="Remove" href="#"></a>
                                             </div>
                                         </div>
                                  <?php } ?>
                                <?php }?>
                                <div watched="false" class="feed" itemid="161034164792" wt="0723578f629b13cce644b5a7f46f290e">
                                        <a class="icn" href="http://www.ebay.com/itm/Apple-iPhone-3GS-8GB-Black-Unlocked-Dim-Display-Water-Dmg-ASIS-/161034164792">
                                            <img src="http://thumbs.ebaystatic.com/d/w225/m/m6C3wBrXWZyU1ME4MF5s03g.jpg" style="width: 225px;"></a> 
                                            <a class="vi" title="Apple iPhone 3GS - 8GB - Black (Unlocked)  Dim Display, Wate…" href="http://www.ebay.com/itm/Apple-iPhone-3GS-8GB-Black-Unlocked-Dim-Display-Water-Dmg-ASIS-/161034164792">
                                                AppleiPhone 3GS - 8GB - Black (Unlocked) Dim Display, Wate…
                                            </a>
                                        <div class="hvrnfo">
                                            <div class="pdd">
                                                <div>
                                                        <a href="http://www.ebay.com/itm/Apple-iPhone-3GS-8GB-Black-Unlocked-Dim-Display-Water-Dmg-ASIS-/161034164792" class="pra">
                                                            Apple iPhone 3GS - 8GB - Black (Unlocked) Dim Display, Wate…
                                                        </a>
                                                </div>
                                                <div class="prc">$50.00</div>
                                            </div>
                                        </div>
                                        <div class="more clr" style="">
                                                <a title="iphone" href="javascript:;" data-interest-id="5196afdc69cc0e02dbe62af7" class="moreintr">iphone<b></b></a>
                                                <span data-list-time="1369634465000" class="time"> Added 1m ago</span>
                                        </div>
                                        <div class="btns">
                                                <a data-unwatch-url="http://my.ebay.com/ws/eBayISAPI.dll?MyEbayBeta&amp;vi=true&amp;SubmitAction.DeleteListEntries=x&amp;tagId=-99&amp;entityId=161034164792"
                                                        data-watch-url="http://cgi1.ebay.com/ws/eBayISAPI.dll?ViewItemMakeTrack&amp;rt=nc&amp;ssPageName=FEED:watchlink:en&amp;SubmitAction.AddToListVI=x&amp;tagId=-99&amp;etn=Watch%20list&amp;item=161034164792&amp;wt=0723578f629b13cce644b5a7f46f290e"
                                                        class="watch" href="#"><i>Watch</i></a> <a class="rmv" title="Remove" href="#"></a>
                                        </div>
                                </div>
                            </div>
                        </div>
                        <div class="clr"></div>
                        </div>
		</div>
	</div>
</div><?php }} ?>