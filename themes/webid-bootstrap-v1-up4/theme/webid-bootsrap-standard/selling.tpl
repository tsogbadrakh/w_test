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
      <li class="active"><a href="#">{L_453}</a> </li>
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
<legend> {L_453}</legend>
<table class="table table-bordered table-striped table-condensed">
  <tr>
    <th> {L_458} </th>
    <th> {L_455} </th>
    <th> {L_457} </th>
    <th  class="hidden-phone" > {L_284} </th>
    <th>&nbsp;</th>
  </tr>
  <!-- BEGIN a -->
  <!-- BEGIN w -->
  <tr valign="top" {a.w.BGCOLOUR}>
    <td><a href="{SITEURL}item.php?id={a.AUCTIONID}" target="_blank">{a.TITLE}</a><br />
      <span class="muted"><small>(ID: <a href="{SITEURL}item.php?id={a.AUCTIONID}" target="_blank">{a.AUCTIONID}</a> - {L_25_0121} {a.ENDS})</small></span> </td>
    <td width="33%"><small><a href="{SITEURL}profile.php?user_id={a.w.WINNERID}">{a.w.NICK}</a> {a.w.FB}</small> </td>
    <td width="17%" align="right"> {a.w.BIDF} </td>
    <td  class="hidden-phone"  width="10%"> {a.w.QTY} </td>
    <td width="10%" nowrap="nowrap"><!-- IF a.w.B_PAID -->
      {L_898}
      <!-- ELSE -->
      <a href="{SITEURL}selling.php?paid={a.w.ID}{AUCID}">{L_899}</a>
      <!-- ENDIF -->
    </td>
  </tr>
  <!-- END w -->
  <!-- END a -->
  <!-- IF NUM_WINNERS eq 0 -->
  <tr>
    <td colspan="5"> {L_198} </td>
  </tr>
  <!-- ENDIF -->
</table>
<!-- INCLUDE user_menu_footer.tpl -->
