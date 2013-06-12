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
      <li><a href="yourauctions_sold.php">{L_25_0119}</a></li>
      <li><a href="selling.php">{L_453}</a> </li>
      <!-- ENDIF -->
      <li class="nav-header">{L_25_0083}</li>
      <li><a href="auction_watch.php">{L_471}</a></li>
      <li><a href="item_watch.php">{L_472}</a></li>
      <li><a href="yourbids.php">{L_620}</a></li>
      <li class="active"><a href="#">{L_454}</a></li>
    </ul>
  </div>
</div>
<div class="span9">
  <legend> {L_454}</legend>
  <table class="table table-bordered table-striped table-condensed">
    <!-- BEGIN items -->
    <tr valign="top">
      <td colspan="6"> {L_458} <b><a href="item.php?id={items.AUC_ID}" target="_blank">{items.TITLE}</a></b> (ID: <a href="item.php?id={items.AUC_ID}" target="_blank">{items.AUC_ID}</a> - {L_25_0121} {items.ENDS}) </td>
    </tr>
    <tr>
      <th width="30%"> {L_125} </th>
      <th width="20%"> {L_460} </th>
      <th class="hidden-phone"  width="15%"> {L_461} </th>
      <th class="hidden-phone"  width="10%"> {L_284} </th>
      <th width="15%"> {L_189} </th>
      <th width="10%"> {L_755} </th>
    </tr>
    <tr valign="top">
      <td> {items.SELLNICK}<br />
        <small>{items.FB_LINK}</small> </td>
      <td><small><a href="mailto:{items.SELLEMAIL}">{items.SELLEMAIL}</a></small> </td>
      <td class="hidden-phone"  align="right"> {items.FBID} </td>
      <td class="hidden-phone"  align="center"> {items.QTY} </td>
      <td align="right"> {items.TOTAL} </td>
      <td><!-- IF items.B_PAID -->
        {L_755}
        <!-- ELSE -->
        <form name="" method="post" action="{SITEURL}pay.php?a=2" id="fees">
          <input type="hidden" name="csrftoken" value="{_CSRFTOKEN}">
          <input type="hidden" name="pfval" value="{items.AUC_ID}">
          <input type="submit" name="Pay" value="{L_756}" class="pay btn btn-primary">
        </form>
        <!-- ENDIF -->
      </td>
    </tr>
    <!-- END items -->
  </table>
</div>
<!-- INCLUDE user_menu_footer.tpl -->
