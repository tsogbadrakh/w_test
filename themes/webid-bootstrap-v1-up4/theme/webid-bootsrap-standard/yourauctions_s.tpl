<script type="text/javascript">

$(document).ready(function() {

	$("#deleteall").click(function() {

		var checked_status = this.checked;

		$("input[name=O_delete[]]").each(function() {

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
      <li class="active"><a href="#">{L_2__0056}</a></li>
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
<legend>{L_2__0056}</legend>
<form name="open" method="post" action="" id="processdel">
  <input type="hidden" name="csrftoken" value="{_CSRFTOKEN}">
  <small><span class="muted">{L_5117}&nbsp;{PAGE}&nbsp;{L_5118}&nbsp;{PAGES}</span></small>
  <table class="table table-bordered table-striped table-condensed">
    <tr>
      <td><a href="yourauctions_s.php?sa_ord=title&sa_type={ORDERNEXT}">{L_624}</a>
        <!-- IF ORDERCOL eq 'title' -->
        <a href="yourauctions_s.php?sa_ord=title&sa_type={ORDERNEXT}">{ORDERTYPEIMG}</a>
        <!-- ENDIF -->
      </td>
      <td class="hidden-phone" width="9%" align="center"> {L__0153} </td>
      <td width="7%" align="center"><a href="yourauctions_s.php?sa_ord=num_bids&sa_type={ORDERNEXT}">{L_627}</a>
        <!-- IF ORDERCOL eq 'num_bids' -->
        <a href="yourauctions_s.php?sa_ord=num_bids&sa_type={ORDERNEXT}">{ORDERTYPEIMG}</a>
        <!-- ENDIF -->
      </td>
      <td width="10%" align="center"><a href="yourauctions_s.php?sa_ord=current_bid&sa_type={ORDERNEXT}">{L_628}</a>
        <!-- IF ORDERCOL eq 'current_bid' -->
        <a href="yourauctions_s.php?sa_ord=current_bid&sa_type={ORDERNEXT}">{ORDERTYPEIMG}</a>
        <!-- ENDIF -->
      </td>
      <td width="6%" align="center"> {L_298}
        </th>
      <td width="8%" align="center"> {L_008} </td>
    </tr>
    <!-- IF B_AREITEMS -->
    <!-- BEGIN items -->
    <tr>
      <td><a href="item.php?id={items.ID}">{items.TITLE}</a> </td>
      <td class="hidden-phone" width="9%"  align="center"><!-- IF items.RELIST eq 0 -->
        --
        <!-- ELSE -->
        {items.RELIST} / {items.RELISTED}
        <!-- ENDIF -->
      </td>
      <td width="7%" align="center"> {items.BIDS} </td>
      <td width="10%" align="center"><!-- IF items.B_HASNOBIDS -->
        -
        <!-- ELSE -->
        {items.BID}
        <!-- ENDIF -->
      </td>
      <td width="6%" align="center"><!-- IF items.B_HASNOBIDS -->
        <a href="edit_active_auction.php?id={items.ID}"><img src="images/edititem.gif" width="13" height="17" alt="{L_512}" border="0"></a>
        <!-- ENDIF -->
      </td>
      <td width="8%" align="center"><!-- IF items.B_HASNOBIDS -->
        <input type="checkbox" name="O_delete[]" value="{items.ID}">
        <!-- ENDIF -->
      </td>
      <td align="center"><!-- IF items.SUSPENDED eq 9 -->
        <a href="{SITEURL}pay.php?a=4&auction_id={items.ID}">{L_769}</a>
        <!-- ELSEIF items.SUSPENDED eq 8 -->
        <a href="{SITEURL}pay.php?a=5">{L_770}</a>
        <!-- ENDIF -->
      </td>
    </tr>
    <!-- END items -->
    <!-- ENDIF -->
    <tr  class="hidden-phone" >
      <td colspan="5" style="text-align:right"><small><span class="muted"?{L_30_0102}</span></span></td>
      <td align="center"><input type="checkbox" id="deleteall"></td>
    </tr>
    <tr>
      <td class="white" colspan="7" style="text-align:center"><input type="hidden" name="action" value="delopenauctions">
        <input type="submit" name="Submit" value="{L_631}"  class="btn btn-primary">
      </td>
    </tr>
  </table>
</form>
<div class="pagination pagination-centered">
  <ul>
    {PREV}
    <!-- BEGIN pages -->
    {pages.PAGE}
    <!-- END pages -->
    {NEXT}
  </ul>
</div>
<!-- INCLUDE user_menu_footer.tpl -->
