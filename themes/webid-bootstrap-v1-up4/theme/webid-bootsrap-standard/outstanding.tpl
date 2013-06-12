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
      <li class="active"><a href="#">{L_422}</a></li>
      <!-- IF B_CAN_SELL -->
      <li class="nav-header">{L_25_0082}</li>
      <li><a href="select_category.php">{L_028}</a></li>
      <li><a href="selleremails.php">{L_25_0188}</a></li>
      <li><a href="yourauctions_p.php">{L_25_0115}</a></li>
      <li><a href="yourauctions.php">{L_203}</a></li>
      <li><a href="yourauctions_c.php">{L_204}</a></li>
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
<legend>{L_422}</legend>
<div class="row">
  <div class="span6 well"> {L_846}:{USER_BALANCE}<br />
    <br />
    <form name="" method="post" action="{SITEURL}pay.php?a=1" id="fees">
      <input type="hidden" name="csrftoken" value="{_CSRFTOKEN}">
      <input type="text" name="pfval" value="{PAY_BALANCE}" size="7">
      <small><span class="muted">{CURRENCY} </span></small><br />
      <input type="submit" name="Pay" value="Pay" class="btn btn-primary btn-small">
    </form>
  </div>
</div>
<small><span class="muted">{L_5117}&nbsp;{PAGE}&nbsp;{L_5118}&nbsp;{PAGES}</span></small>
<table class="table table-bordered table-condensed table-striped">
  <tr style="background-color:{TBLHEADERCOLOUR}">
    <td style="width: 35%;">{L_018}</td>
    <td style="width: 15%;">{L_847}</td>
    <td style="width: 15%;">{L_319}</td>
    <td style="width: 15%;">{L_189}</td>
    <td>&nbsp;</td>
  </tr>
  <!-- BEGIN to_pay -->
  <tr>
    <td><!-- IF to_pay.B_NOTITLE -->
      {L_113} {to_pay.ID}
      <!-- ELSE -->
      <a href="{to_pay.URL}" target="_blank">{to_pay.TITLE}</a>
      <!-- ENDIF -->
    </td>
    <td><small>{to_pay.BID}</small></td>
    <td><small>{to_pay.SHIPPING}</small></td>
    <td>{to_pay.TOTAL}</td>
    <td style="text-align: center;" class="alert"><form name="" method="post" action="{SITEURL}pay.php?a=2" id="fees" style="margin:0;">
        <input type="hidden" name="csrftoken" value="{_CSRFTOKEN}">
        <input type="hidden" name="pfval" value="{to_pay.ID}">
        <input type="submit" name="Pay" value="{L_756}" class="pay btn btn-primary">
      </form></td>
  </tr>
  <!-- END to_pay -->
</table>
<div class="pagination pagination-centered">
  <ul>
    <li>{PREV}</li>
    <!-- BEGIN pages -->
    <li>{pages.PAGE}</li>
    <!-- END pages -->
    <li>{NEXT}</li>
  </ul>
</div>
<!-- INCLUDE user_menu_footer.tpl -->
