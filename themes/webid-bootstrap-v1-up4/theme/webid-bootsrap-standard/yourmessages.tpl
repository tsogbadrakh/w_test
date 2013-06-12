<div class="row">
<div class="span3">
  <div class="well" style="max-width: 340px; padding: 8px 0;">
    <ul class="nav nav-list">
      <li class="nav-header">{L_205}</li>
      <li><a href="{SITEURL}user_menu.php?cptab=summary">{L_25_0080}</a></li>
      <li class="nav-header">{L_25_0081}</li>
      <li><a href="edit_data.php">{L_621}</a></li>
      <li><a href="yourfeedback.php">{L_208}</a></li>
      <li><a href="buysellnofeedback.php">{L_207}</a> <small><span class="muted"><em>{FBTOLEAVE}</em></span></small></li>
      <li class="active"><a href="#">{L_623}</a> <small><span class="muted"><em>{NEWMESSAGES}</em></span></small></li>
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
      <li><a href="selling.php">{L_453}</a><br>
      </li>
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
  <div class="form-actions"> <a class="btn btn-primary" href="{SITEURL}mail.php">{L_351}</a><br />
  </div>
  <table class="table table-bordered table-condensed">
    <tbody>
      <tr>
        <td width="150">{L_332}:</td>
        <td><strong>{SUBJECT}</strong></td>
      </tr>
      <tr>
        <td>{L_340}:</td>
        <td>{SENDERNAME} <small><span class="muted">{SENT}</span></small></td>
      </tr>
      <tr>
        <td>{L_333}:</td>
        <td>{MESSAGE}</td>
      </tr>
    </tbody>
  </table>
  <p> <a class="btn btn-primary" href="{SITEURL}mail.php?x=1&amp;message={HASH}">{L_349}</a> <a class="btn btn-alert" href="{SITEURL}mail.php?deleteid[]={ID}" onClick="if ( !confirm('Are you sure you want to delete this message?') ) { return false; }">{L_008}</a> </p>
</div>
<!-- INCLUDE user_menu_footer.tpl -->
