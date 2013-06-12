<script type="text/javascript">
$(document).ready(function () {
    $("#checkboxall").click(function () {
        var checked_status = this.checked
        $(".deleteid").each(function () {
            this.checked = checked_status;
        });
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
      <li class="active"><a href="#">{L_623}</a> <small><span style="display:none">{NEWMESSAGES}</span></small></li>
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
  <legend>{L_623}</legend>
  <div align="center">{ERROR}</div>
  <!-- IF REPLY_X eq 1 -->
  <!-- INCLUDE mail-send.tpl -->
  <!-- ENDIF -->
  <form action="mail.php" method="post" name="deletemessages">
    <input type="hidden" name="csrftoken" value="{_CSRFTOKEN}">
    <table class="table table-bordered table-condensed table-striped">
      <thead>
        <tr>
          <td width="100"><small>{WHENSENT}</small></td>
          <td>{TITLE}</td>
          <td width="200">{SENTFROM}</td>
          <td style="text-align:center" nowrap="nowrap"><small><span class="muted">{L_2__0028}</span></small><br>
            <input type="checkbox" name="" id="checkboxall" value=""></td>
        </tr>
      </thead>
      <tbody>
        <!-- IF MSGCOUNT eq 0 -->
        <tr>
          <td colspan="5">{L_2__0029}</td>
        </tr>
        <!-- ELSE -->
        <!-- BEGIN msgs -->
        <tr>
          <td><small><span class="muted">{msgs.SENT}</span></small></td>
          <td><a href="yourmessages.php?id={msgs.ID}">{msgs.SUBJECT}</a></td>
          <td>{msgs.SENDER}</td>
          <td style="text-align:center"><input type="checkbox" name="deleteid[]" class="deleteid" value="{msgs.ID}"></td>
        </tr>
        <!-- END msgs -->
        <!-- ENDIF -->
      </tbody>
    </table>
    <div align="right">
      <input class="btn btn-primary" type="submit" name="submit" value="{L_008}"  OnClick="if ( !confirm('{L_2__0031}') ) { return false; }">
    </div>
  </form>
</div>
<!-- INCLUDE user_menu_footer.tpl -->
