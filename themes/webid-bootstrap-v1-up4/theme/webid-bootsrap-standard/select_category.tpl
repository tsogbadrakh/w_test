<style type="text/css">

.box {height: 100; width:300;}

</style>
<script type="text/javascript">
function SubmitBoxes(N) {
    $('#catformbox').val(N);
    $('#catform').submit();
}
</script>
<div class="content">
  <legend>{L_028}:
  <!-- IF CAT_NO eq 2 -->
  {L_2__0041} {COST}</legend>
  <!-- ELSE -->
  {L_2__0038}
  </legend>
  <!-- ENDIF -->
  <a name="goto"></a>
  <form name="catform" id="catform" action="select_category.php#goto" method="post">
    <input type="hidden" name="csrftoken" value="{_CSRFTOKEN}">
    <input type="hidden" name="action" value="process">
    <input type="hidden" name="box" value="" id="catformbox">
    <input type="hidden" name="cat_no" value="{CAT_NO}">
    <!-- IF ERROR ne '' -->
    <div class="alert"> {ERROR} </div>
    <!-- ENDIF -->
    <div class="well" style="padding:8px;">
      <!-- BEGIN boxes -->
      <select name="cat{boxes.I}" onchange="SubmitBoxes({boxes.I})" style="">
        <option value="0">{L_2__0047}</option>
        <!-- BEGIN cats -->
        <option value="{boxes.cats.K}" {boxes.cats.SELECTED}>{boxes.cats.CATNAME}</option>
        <!-- END cats -->
      </select>
      <!-- IF boxes.B_NOWLINE -->
      <!-- ENDIF -->
      <!-- END boxes -->
    </div>
    <!-- IF B_SHOWBUTTON -->
    <div style="" class="form-action">
      <button type="submit" name="submitit" class="btn btn-primary"> {L_2__0047}</button>
    </div>
    <!-- ENDIF -->
  </form>
  <!-- IF CAT_NO eq 2 && ! B_SHOWBUTTON -->
  <div style="width:230px; float:left">
    <form name="catform" action="sell.php" method="post">
      <input type="hidden" name="csrftoken" value="{_CSRFTOKEN}">
      <input type="hidden" name="act" value="skipexcat">
      <button type="submit" name="submitit" class="btn btn-primary">{L_805}</button>
    </form>
  </div>
</div>
<!-- ENDIF -->
</div>
</div>
