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
      <li class="active"><a href="#">{L_620}</a></li>
      <li><a href="buying.php">{L_454}</a></li>
    </ul>
  </div>
</div>
<div class="span9">
  <table class="table table-bordered table-center table-striped">
    <tr>
      <th> {L_168} </th>
      <th> {L_461} </th>
      <th> {L_171} </th>
    </tr>
    <!-- BEGIN bids -->
    <tr {bids.BGCOLOUR}>
      <td><a href="item.php?id={bids.ID}">{bids.TITLE}</a> </td>
      <td> {bids.BID}
        <!-- IF bids.QTY gt 1 -->
        (x {bids.QTY} {L_5492})
        <!-- ENDIF -->
        <!-- IF bids.PROXYBID ne '' -->
        <p><small>{bids.PROXYBID}</small></p>
        <!-- ENDIF -->
      </td>
      <td> {bids.TIMELEFT} </td>
    </tr>
    <!-- END bids -->
    <!-- IF NUM_BIDS eq 0 -->
    <tr>
      <td>You haven't bid yet</td>
    </tr>
    <!-- ENDIF -->
  </table>
  <span class="alert">{L_30_0098}</span> </div>
<!-- INCLUDE user_menu_footer.tpl -->
