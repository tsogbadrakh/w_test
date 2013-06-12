<script type="text/javascript">

$(document).ready(function() {

	var relist_fee = {RELIST_FEE};

	$("#processrelist").submit(function() {

		if (confirm('{L_30_0087}')){

			return true;

		} else {

			return false;

		}

	});

	$("#relistid").click(function(){

		if (this.is(':checked'))

			$("#to_pay").text(parseFloat($("#to_pay").text()) - relist_fee);

		else

			$("#to_pay").text(parseFloat($("#to_pay").text()) + relist_fee);

	});

});

</script>

<div class="row">
<div class="span3">
  <div class="well" style="max-width: 340px; padding: 8px 0;">
    <ul class="nav nav-list">
      <li class="nav-header">{L_205}</li>
      <li><a href="{SITEURL}user_menu.php?cptab=summary">{L_25_0080}</a></li>
      <li class="nav-header">{L_25_0081}</li>
      <li><a href="edit_data.php">{L_621}</a></li>
      <li><a href="yourfeedback.php">{L_208}</a></li>
      <li><a href="buysellnofeedback.php">{L_207}</a> <small><span class="muted">{FBTOLEAVE}</span></small></li>
      <li><a href="mail.php">{L_623}</a> <small><span class="muted">{NEWMESSAGES}</span></small></li>
      <li><a href="outstanding.php">{L_422}</a></li>
      <!-- IF B_CAN_SELL -->
      <li class="nav-header">{L_25_0082}</li>
      <li><a href="select_category.php">{L_028}</a></li>
      <li><a href="selleremails.php">{L_25_0188}</a></li>
      <li><a href="yourauctions_p.php">{L_25_0115}</a></li>
      <li><a href="yourauctions.php">{L_203}</a></li>
      <li><a href="yourauctions_c.php">{L_204}</a></li>
      <li><a href="yourauctions_s.php">{L_2__0056}</a></li>
      <li class="active"><a href="#">{L_25_0119}</a></li>
      <li><a href="selling.php">{L_453}</a> </li>
      <!-- ENDIF -->
      <li class="nav-header">{L_25_0083}</li>
      <li><a href="auction_watch.php">{L_471}</a></li>
      <li><a href="item_watch.php">{L_472}</a></li>
      <li><a href="yourbids.php">{L_620}</a></li>
      <li><a href="buying.php">{L_454}</a></li>
    </ul>
  </div>
</div>
<div class="span9">
  <legend>{L_25_0119}</legend>
  <small><span class="muted">{L_5117}&nbsp;{PAGE}&nbsp;{L_5118}&nbsp;{PAGES}</span></small>
  <table class="table table-bordered table-condensed table-striped">
    <tr>
      <td width="40%"><a href="yourauctions_sold.php?solda_ord=title&solda_type={ORDERNEXT}">{L_624}</a>
        <!-- IF ORDERCOL eq 'title' -->
        <a href="yourauctions_sold.php?solda_ord=title&solda_type={ORDERNEXT}">{ORDERTYPEIMG}</a>
        <!-- ENDIF -->
      </td>
      <td width="10%"><a href="yourauctions_sold.php?solda_ord=starts&solda_type={ORDERNEXT}">{L_625}</a>
        <!-- IF ORDERCOL eq 'starts' -->
        <a href="yourauctions_sold.php?solda_ord=starts&solda_type={ORDERNEXT}">{ORDERTYPEIMG}</a>
        <!-- ENDIF -->
      </td>
      <td  class="hidden-phone"  width="10%"><a href="yourauctions_sold.php?solda_ord=ends&solda_type={ORDERNEXT}">{L_626}</a>
        <!-- IF ORDERCOL eq 'ends' -->
        <a href="yourauctions_sold.php?solda_ord=ends&solda_type={ORDERNEXT}">{ORDERTYPEIMG}</a>
        <!-- ENDIF -->
      </td>
      <td  class="hidden-phone"  width="10%" align="center"><a href="yourauctions_sold.php?solda_ord=num_bids&solda_type={ORDERNEXT}">{L_627}</a>
        <!-- IF ORDERCOL eq 'num_bids' -->
        <a href="yourauctions_sold.php?solda_ord=num_bids&solda_type={ORDERNEXT}">{ORDERTYPEIMG}</a>
        <!-- ENDIF -->
      </td>
      <td  width="10%" align="center"><a href="yourauctions_sold.php?solda_ord=current_bid&solda_type={ORDERNEXT}">{L_628}</a>
        <!-- IF ORDERCOL eq 'current_bid' -->
        <a href="yourauctions_sold.php?solda_ord=current_bid&solda_type={ORDERNEXT}">{ORDERTYPEIMG}</a>
        <!-- ENDIF -->
      </td>
      <td width="10%">&nbsp;</td>
    </tr>
    <!-- BEGIN items -->
    <tr>
      <td width="40%"><a href="item.php?id={items.ID}">{items.TITLE}</a><br />
        <small><a href="selling.php?id={items.ID}">{L_900}</a></small> </td>
      <td width="10%"> {items.STARTS} </td>
      <td  class="hidden-phone"  width="10%"> {items.ENDS} </td>
      <td   class="hidden-phone" width="10%" align="center"> {items.BIDS} </td>
      <td align="center"><!-- IF items.B_HASNOBIDS -->
        -
        <!-- ELSE -->
        {items.BID}
        <!-- ENDIF -->
      </td>
      <td width="10%" align="center"><!-- IF items.B_CLOSED -->
        <a href="sellsimilar.php?id={items.ID}">{L_2__0050}</a>
        <!-- ELSE -->
        -
        <!-- ENDIF -->
      </td>
    </tr>
    <!-- END items -->
  </table>
  <div class="pagination pagination-centered">
    <ul>
      {PREV}
      <!-- BEGIN pages -->
      {pages.PAGE}
      <!-- END pages -->
      {NEXT}
    </ul>
  </div>
</div>
<!-- INCLUDE user_menu_footer.tpl -->
