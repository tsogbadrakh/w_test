<!-- IF TMPMSG ne '' -->
<p style="background-color;#FF9933;display:block" > <b><span style="color:red;">{TMPMSG}</span></b> </p>
<!-- ENDIF -->
<div class="row">
  <div class="span3">
    <div class="well" style="max-width: 340px; padding: 8px 0;">
      <ul class="nav nav-list">
        <li class="nav-header">{L_205}</li>
        <li class="active"><a href="#">{L_25_0080}</a></li>
        <li class="nav-header">{L_25_0081}</li>
        <li><a href="edit_data.php">{L_621}</a></li>
        <li><a href="yourfeedback.php">{L_208}</a></li>
        <li><a href="buysellnofeedback.php">{L_207}</a> <small><span class="muted"><em>{FBTOLEAVE}</em></span></small></li>
        <li><a href="mail.php">{L_623}</a> <small><span class="muted"><em>{NEWMESSAGES}</em></span></small></li>
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
    <legend>{L_593}</legend>
    {FBTOLEAVE}
    
    {NEWMESSAGES}
    
    {NO_REMINDERS}
    
    {TO_PAY}
    
    {BENDING_SOON}
    
    {BOUTBID}
    <!-- IF B_CAN_SELL -->
    <!-- ELSE -->
    <div class="row">
      <div class="span9">
        <form name="request" action="" method="post">
          <input type="hidden" name="csrftoken" value="{_CSRFTOKEN}">
          <p>{L_25_0140}</p>
          <p>
            <input type="submit" name="requesttoadmin" value="{L_25_0141}"  class="button">
          </p>
        </form>
      </div>
    </div>
    <!-- ENDIF -->
  </div>
</div>
<!-- INCLUDE user_menu_footer.tpl -->
