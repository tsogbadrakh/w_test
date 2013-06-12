<div class="row">
<div class="span3">
  <div class="well" style="max-width: 340px; padding: 8px 0;">
    <ul class="nav nav-list">
      <li class="nav-header">{L_205}</li>
      <li><a href="{SITEURL}user_menu.php?cptab=summary">{L_25_0080}</a></li>
      <li class="nav-header">{L_25_0081}</li>
      <li><a href="edit_data.php">{L_621}</a></li>
      <li><a href="yourfeedback.php">{L_208}</a></li>
      <li class="active"><a href="">{L_207}</a> <small><span style="display:none">{FBTOLEAVE}</span></small></li>
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
      <li><a href="buying.php">{L_454}</a></li>
    </ul>
  </div>
</div>
<div class="span9">
  <!-- IF B_MENUTITLE -->
  <legend>{UCP_TITLE}</legend>
  <!-- ENDIF -->
  <table class="table table-bordered table-striped">
    <!-- IF NUM_AUCTIONS gt 0 -->
    <tr>
      <th> {L_458} </th>
      <th style="min-width:100px;"> {L_25_0004} </th>
      <th class="hidden-phone"> {L_303} </th>
      <th> {L_25_0006} </th>
      <th class="hidden-phone"> {L_284} </th>
    </tr>
    <!-- BEGIN fbs -->
    <tr>
      <td><b><a href="item.php?id={fbs.ID}" target="_blank">{fbs.TITLE}</a></b><br />
        <small><span class="muted">{fbs.CLOSINGDATE}</span></small> </td>
      <td> {fbs.WINORSELLNICK}, <small><strong>{fbs.WINORSELL}</strong></small> <br />
        <a class="btn btn-primary btn-mini" href="{ASSLURL}feedback.php?auction_id={fbs.ID}&wid={fbs.WINNER}&sid={fbs.SELLER}&ws={fbs.WS}">{L_207}</a> </td>
      <td class="hidden-phone"><a href="mailto:{fbs.WINORSELLEMAIL}"><small>{fbs.WINORSELLEMAIL}</small></a> </td>
      <td> {fbs.BIDFORM} </td>
      <td class="hidden-phone"> {fbs.QTY} </td>
    </tr>
    <!-- END fbs -->
    <!-- ELSE -->
    <tr>
      <td><b>{L_30_0213}</b> </td>
    </tr>
    <!-- ENDIF -->
  </table>
</div>
<!-- INCLUDE user_menu_footer.tpl -->
