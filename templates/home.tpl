<div class="wb-middle">
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
                                {*<a aria-haspopup="true" role="menuitem" _sp="p2050601.m1380.l3250" href="{$SITEURL}browse.php?id=0" class="rt">{#L_277#}</a>*}
                                <div id=0 aria-haspopup="true" role="menuitem" _sp="p2050601.m1380.l3250" class="rt">{#L_277#}</div>
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
                            {foreach $cat_list as $list}
                                <li class="scat">
                                    <!-- background-color:{$list.COLOUR} -->
                                    {*<a id="{$list.ID}" style="" aria-haspopup="true" _sp="p2050601.m2329" href="browse.php?id=" class="rt" name="mainmenu">
                                        {$list.IMAGE}{$list.NAME}
                                    </a>{$list.CATAUCNUM}*}
                                    <div id="{$list.ID}" aria-haspopup="true" _sp="p2050601.m2329" class="rt" name="mainmenu">
                                        {$list.IMAGE}{$list.NAME}
                                    </div>
                                </li>
                            {/foreach}
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
                                    {if $B_HOT_ITEMS}
                                    <div class="pnlShowcase" id="ctl00_cphBody_ctlCategorySet12_pnlItems">
                                        <li class="frm fst" style="opacity: 1; display: block;">
                                            <h2 class="section-header">{#L_279#}</h2>
                                            {foreach $hotitems as $ht}
                                            <div class="feature" id="ctl00_cphBody_ctlCategorySet12_lvwFeatured_ctrl0_pnlFeature">

                                                    <div class="saving-label-large" title="" id="ctl00_cphBody_ctlCategorySet12_lvwFeatured_ctrl0_pnlSavingCircle">Save 38%</div>
                                                    <a target="_blank" class="img-container" id="ctl00_cphBody_ctlCategorySet12_lvwFeatured_ctrl0_aImgLink" href="{$SITEURL}item.php?id={$ht.ID}">
                                                        <img class="gallery-image" alt="" src="{$ht.IMAGE}" style="width: 170px; height: 103px;">
                                                    </a>
                                                    <br> 
                                                    <a target="_blank" class="description" id="ctl00_cphBody_ctlCategorySet12_lvwFeatured_ctrl0_aDescLink"
                                                            href="{$SITEURL}item.php?id={$ht.ID}">{$ht.TITLE}</a> 
                                                    <span class="price">{$ht.BID}</span>
                                            </div>
                                            {/foreach}
                                            <div class="see-all-cat">
                                                    <a href="{$SITEURL}browse.php?id=0" class="see-cat-button" id="ctl00_cphBody_ctlCategorySet12_lvwFeatured_hypSeeAllButton">
                                                        See more deals in Even More Deals <img alt="" src="http://new.static.ebay.com.au/cache/windows/sites/deals/deals-cat-arrow.png">
                                                    </a>
                                                    <div class="see-cat-footer"></div>
                                            </div>
                                        </li>
                                    </div>
                                    {/if}
                                    {if $B_AUC_LAST}
                                    <div class="pnlShowcase" id="ctl00_cphBody_ctlCategorySet12_pnlItems">
                                        <li class="frm fst" style="opacity: 1; display: block;">
                                            <h2 class="section-header">{#L_278#}</h2>
                                            {foreach $auc_last as $alast}
                                            <div class="feature" id="ctl00_cphBody_ctlCategorySet12_lvwFeatured_ctrl0_pnlFeature" {$auc_last.BGCOLOUR}>
                                                    <div class="saving-label-large" title="" id="ctl00_cphBody_ctlCategorySet12_lvwFeatured_ctrl0_pnlSavingCircle">Save XX%</div>
                                                    <a target="_blank" class="img-container" id="ctl00_cphBody_ctlCategorySet12_lvwFeatured_ctrl0_aImgLink" href="{$SITEURL}item.php?id={$alast.ID}">
                                                        <img class="gallery-image" alt="" src="" style="width: 170px; height: 103px;">
                                                    </a>
                                                    <br> 
                                                    <a target="_blank" class="description" id="ctl00_cphBody_ctlCategorySet12_lvwFeatured_ctrl0_aDescLink"
                                                            href="{$SITEURL}item.php?id={$alast.ID}">{$alast.TITLE}</a> 
                                                    <span class="price"></span>
                                            </div>
                                            {/foreach}
                                            <div class="see-all-cat">
                                                    <a href="{$SITEURL}browse.php?id=0" class="see-cat-button" id="ctl00_cphBody_ctlCategorySet12_lvwFeatured_hypSeeAllButton">
                                                        See more deals in Even More Deals <img alt="" src="http://new.static.ebay.com.au/cache/windows/sites/deals/deals-cat-arrow.png">
                                                    </a>
                                                    <div class="see-cat-footer"></div>
                                            </div>
                                        </li>
                                    </div>
                                    {/if}
                                    {if $B_AUC_ENDSOON}
                                    <div class="pnlShowcase" id="ctl00_cphBody_ctlCategorySet12_pnlItems">
                                        <li class="frm fst" style="opacity: 1; display: block;">
                                            <h2 class="section-header">{#L_280#}</h2>
                                            {foreach $end_soon as $esoon}
                                            <div class="feature" id="ctl00_cphBody_ctlCategorySet12_lvwFeatured_ctrl0_pnlFeature" {$esoon.BGCOLOUR}>
                                                    <div class="saving-label-large" title="" id="ctl00_cphBody_ctlCategorySet12_lvwFeatured_ctrl0_pnlSavingCircle">Save XX%</div>
                                                    <a target="_blank" class="img-container" id="ctl00_cphBody_ctlCategorySet12_lvwFeatured_ctrl0_aImgLink" href="{$SITEURL}item.php?id={$esoon.ID}">
                                                        <img class="gallery-image" alt="" src="" style="width: 170px; height: 103px;">
                                                    </a>
                                                    <br> 
                                                    <a target="_blank" class="description" id="ctl00_cphBody_ctlCategorySet12_lvwFeatured_ctrl0_aDescLink"
                                                            href="{$SITEURL}item.php?id={$esoon.ID}">{$esoon.TITLE}</a> 
                                                    <span class="price">{$esoon.DATE}</span>
                                            </div>
                                            {/foreach}
                                            <div class="see-all-cat">
                                                    <a href="{$SITEURL}browse.php?id=0" class="see-cat-button" id="ctl00_cphBody_ctlCategorySet12_lvwFeatured_hypSeeAllButton">
                                                        See more deals in Even More Deals <img alt="" src="http://new.static.ebay.com.au/cache/windows/sites/deals/deals-cat-arrow.png">
                                                    </a>
                                                    <div class="see-cat-footer"></div>
                                            </div>
                                        </li>
                                    </div>
                                    {/if}
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
                                {if $B_FEATURE}
                                    {foreach $featured as $ft}
                                         <div watched="false" class="feed" itemid="161034164792" wt="0723578f629b13cce644b5a7f46f290e">
                                             <a class="icn" href="{$SITEURL}item.php?id={$ft.ID}">
                                                 <img  src="{$ft.IMAGE}" style="width: 225px;" title="{$ft.TITLE}" alt="{$ft.TITLE}" ></a> 
                                                 <a class="vi" title="{$ft.TITLE}" href="{$SITEURL}item.php?id={$ft.ID}">
                                                     {$ft.TITLE}
                                                 </a>
                                             <div class="hvrnfo">
                                                 <div class="pdd">
                                                     <div>
                                                             <a href="{$SITEURL}item.php?id={$ft.ID}" class="pra">
                                                                 {$ft.TITLE}
                                                             </a>
                                                     </div>
                                                     <div class="prc">{$ft.BID}</div>
                                                 </div>
                                             </div>
                                             <div class="more clr" style="">
                                                 <a title="iphone" href="" class="moreintr">iphone<b></b></a>
                                                 <span data-list-time="1369634465000" class="time"> Added 1m ago</span>
                                             </div>
                                             <div class="btns">
                                                 <a data-unwatch-url="{$SITEURL}item.php?id={$ft.ID}" data-watch-url="{$SITEURL}item.php?id={$ft.ID}" class="watch" href="#"><i>Watch</i></a> 
                                                 <a class="rmv" title="Remove" href="#"></a>
                                             </div>
                                         </div>
                                  {/foreach}
                                {/if}
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
</div>