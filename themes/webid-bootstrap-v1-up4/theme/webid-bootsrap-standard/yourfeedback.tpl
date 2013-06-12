<div class="row">
<div class="span3">
  <div class="well" style="max-width: 340px; padding: 8px 0;">
    <ul class="nav nav-list">
      <li class="nav-header">{L_205}</li>
      <li><a href="{SITEURL}user_menu.php?cptab=summary">{L_25_0080}</a></li>
      <li class="nav-header">{L_25_0081}</li>
      <li><a href="edit_data.php">{L_621}</a></li>
      <li class="active"><a href="#">{L_208}</a></li>
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
      <li><a href="buying.php">{L_454}</a></li>
    </ul>
  </div>
</div>
<div class="span9">
<!-- IF B_MENUTITLE -->
<legend>{UCP_TITLE}</legend>
<!-- ENDIF -->
<div class="hero-unit">
  <h3>{USERNICK} <small>({USERFB}) {USERFBIMG}</small></h3>
</div>
<table class="table table-bordered table-striped">
  <!-- BEGIN fbs -->
  <tr>
    <td style="width:20px;"><img src="{fbs.IMG}" align="middle" alt=""> </td>
    <td style="width:50%"><b>{L_504}: </b>{fbs.FEEDBACK} </td>
    <td><a href="{fbs.USFLINK}"><small>{fbs.USERNAME} ({fbs.USFEED})</a> &nbsp;{fbs.USICON}<br />
      ({L_506}{fbs.FBDATE} {L_25_0177} {fbs.AUCTIONURL})</small> </td>
  </tr>
  <!-- END fbs -->
</table>
<div class="pagination pagination-centered">
  <ul>
    {PAGENATION}
  </ul>
</div>
<!-- INCLUDE user_menu_footer.tpl -->
