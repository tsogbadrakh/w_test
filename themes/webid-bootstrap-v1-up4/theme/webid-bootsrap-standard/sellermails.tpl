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
      <li class="active"><a href="#">{L_25_0188}</a></li>
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
  <legend>{L_25_0188}</legend>
  <form action="" method="post" name="thisform" id="thisform">
    <input type="hidden" name="csrftoken" value="{_CSRFTOKEN}">
    <p>{L_25_0195}</p>
    <label class="radio">
    <input type="radio" name="startemailmod" value="yes"{B_AUCSETUPY}>
    {L_25_0196} </label>
    <label class="radio">
    <input type="radio" name="startemailmod" value="no"{B_AUCSETUPN}>
    {L_25_0197} </label>
    <hr />
    <p>{L_25_0189}</p>
    <label class="radio">
    <input type="radio" name="endemailmod" value="one"{B_CLOSEONE}>
    {L_25_0190} </label>
    <label class="radio">
    <input type="radio" name="endemailmod" value="cum"{B_CLOSEBULK}>
    {L_25_0191} </label>
    <label class="radio">
    <input type="radio" name="endemailmod" value="none"{B_CLOSENONE}>
    {L_25_0193} </label>
    <hr />
    <p>{L_903}</p>
    <label class="radio">
    <input type="radio" name="emailtype" value="text"{B_EMAILTYPET}>
    {L_915} </label>
    <label class="radio">
    <input type="radio" name="emailtype" value="html"{B_EMAILTYPEH}>
    {L_902} </label>
    <hr />
    <input type="hidden" name="action" value="update">
    <input type="submit" name="Submit" value="{L_2_0015}" class="btn btn-primary">
  </form>
</div>
<!-- INCLUDE user_menu_footer.tpl -->
