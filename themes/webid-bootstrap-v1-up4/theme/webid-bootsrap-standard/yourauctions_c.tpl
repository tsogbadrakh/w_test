<script type="text/javascript">

$(document).ready(function() {

	var relist_fee = {RELIST_FEE_NO};

	$("#sellall").click(function() {

		var checked_status = this.checked;

		$("input[name=sell[]]").each(function() {

			this.checked = checked_status;

		});

	});

	$("#deleteall").click(function() {

		var checked_status = this.checked;

		$("input[name=delete[]]").each(function() {

			this.checked = checked_status;

		});

	});

	$("#processdel").submit(function() {

		if (confirm('{L_30_0087}')){

			return true;

		} else {

			return false;

		}

	});

	$(".relistid").click(function(){

		var n = $(".relistid:checked").length;

		$("#to_pay").text(parseFloat(n * relist_fee));

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
      <li class="active"><a href="#">{L_204}</a></li>
      <li><a href="yourauctions_s.php">{L_2__0056}</a></li>
      <li><a href="yourauctions_sold.php">{L_25_0119}</a></li>
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
  <legend>{L_204}</legend>
  <form name="closed" method="post" action="" id="processdel">
    <input type="hidden" name="csrftoken" value="{_CSRFTOKEN}">
    <!-- IF B_RELIST_FEE -->
    {L_437}: {RELIST_FEE} - {L_189}: <span id="to_pay">0.00</span>
    <!-- ENDIF -->
    <small><span class="muted">{L_5117}&nbsp;{PAGE}&nbsp;{L_5118}&nbsp;{PAGES}</span></small>
    <table class="table table-bordered table-condense table-striped">
      <tr>
        <td  width="40%"><small><a href="yourauctions_c.php?ca_ord=title&ca_type={ORDERNEXT}">{L_624}</a></small>
          <!-- IF ORDERCOL eq 'title' -->
          <a href="yourauctions_c.php?ca_ord=title&ca_type={ORDERNEXT}">{ORDERTYPEIMG}</a>
          <!-- ENDIF -->
        </td>
        <td  width="10%"><small><a href="yourauctions_c.php?ca_ord=starts&ca_type={ORDERNEXT}">{L_625}</a></small>
          <!-- IF ORDERCOL eq 'starts' -->
          <small><a href="yourauctions_c.php?ca_ord=starts&ca_type={ORDERNEXT}">{ORDERTYPEIMG}</a></small>
          <!-- ENDIF -->
        </td>
        <td class="hidden-phone"  width="10%"><small><a href="yourauctions_c.php?ca_ord=ends&ca_type={ORDERNEXT}">{L_626}</a></small>
          <!-- IF ORDERCOL eq 'ends' -->
          <a href="yourauctions_c.php?ca_ord=ends&ca_type={ORDERNEXT}">{ORDERTYPEIMG}</a>
          <!-- ENDIF -->
        </td>
        <td  width="10%" align="center"><small><a href="yourauctions_c.php?ca_ord=num_bids&ca_type={ORDERNEXT}">{L_627}</a></small>
          <!-- IF ORDERCOL eq 'num_bids' -->
          <a href="yourauctions_c.php?ca_ord=num_bids&ca_type={ORDERNEXT}">{ORDERTYPEIMG}</a>
          <!-- ENDIF -->
        </td>
        <td class="hidden-phone"  width="11%" align="center"><small><a href="yourauctions_c.php?ca_ord=current_bid&ca_type={ORDERNEXT}">{L_628}</a></small>
          <!-- IF ORDERCOL eq 'current_bid' -->
          <a href="yourauctions_c.php?ca_ord=current_bid&ca_type={ORDERNEXT}">{ORDERTYPEIMG}</a>
          <!-- ENDIF -->
        </td>
        <td  width="10%" align="center"><small>{L_630}</small> </td>
        <td  width="10%" align="center"><small>{L_25_0209}</small> </td>
        <td  width="9%" align="center" bgcolor=><small>{L_008}</small> </td>
      </tr>
      <!-- IF B_AREITEMS -->
      <!-- BEGIN items -->
      <tr>
        <td width="40%"><a href="item.php?id={items.ID}">{items.TITLE}</a> </td>
        <td width="10%"><small>{items.STARTS}</small> </td>
        <td class="hidden-phone" width="10%"><small>{items.ENDS}</small> </td>
        <td class="hidden-phone" width="10%"  align="center"><small>{items.BIDS}</small> </td>
        <td width="11%"  align="center"><small>{items.BID}</small> </td>
        <td width="10%"  align="center"><!-- IF items.B_CANRELIST and B_AUTORELIST -->
          <input type="checkbox" name="relist[]" value="{items.ID}" class="relistid">
          <!-- ELSE -->
          <!-- IF items.B_CANRELIST -->
          <a href="sellsimilar.php?id={items.ID}&relist=1">{L_2__0051}</a>
          <!-- ELSE -->
          <a href="sellsimilar.php?id={items.ID}">{L_2__0050}</a>
          <!-- ENDIF -->
          <!-- ENDIF -->
        </td>
        <td width="10%"  align="center"><!-- IF items.B_CANSSELL -->
          <input type="checkbox" name="sell[]" value="{items.ID}">
          <!-- ENDIF -->
        </td>
        <td width="9%"  align="center"><!-- IF items.B_HASNOBIDS -->
          <input type="checkbox" name="delete[]" value="{items.ID}">
          <!-- ENDIF -->
        </td>
      </tr>
      <!-- END items -->
      <!-- ENDIF -->
      <tr class="hidden-phone">
        <td  colspan="6" style="text-align:right"><span class="muted"><small>{L_30_0102}</small></span></td>
        <td align="center"><input type="checkbox" id="sellall"></td>
        <td align="center"><input type="checkbox" id="deleteall"></td>
      </tr>
      <tr>
        <td colspan="10" style="text-align:center"><input type="hidden" name="action" value="update">
          <input type="submit" name="Submit" value="{L_631}" class="btn btn-primary">
        </td>
      </tr>
    </table>
  </form>
  <div class="pagination pagination-centered">
    <ul>
      <li>{PREV}</li>
      <!-- BEGIN pages -->
      <li>{pages.PAGE}</li>
      <!-- END pages -->
      <li>{NEXT}</li>
    </ul>
  </div>
</div>
<!-- INCLUDE user_menu_footer.tpl -->
