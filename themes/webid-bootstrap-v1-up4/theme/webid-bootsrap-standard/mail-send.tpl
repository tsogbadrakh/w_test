<script type="text/JavaScript">
$(".form1").submit(function () {
    if ($(".to").val() == "") {
        return false;
    }
    if ($(".subject").val() == "") {
        return false;
    }
    if ($(".message").val() == "") {
        return false;
    }
    return true;
});
</script>
<!-- IF B_CONVO -->
<div style="text-align:left;">
  <!-- BEGIN convo -->
  <div style="margin-bottom:10px;" class="{convo.BGCOLOUR}"> {convo.MSG} </div>
  <!-- END convo -->
</div>
<legend> {L_349} </legend>
<!-- ENDIF -->
<div class="well">
  <form name="form1" id="form1" method="post" class="form-horizontal" action="mail.php">
    <!-- IF B_QMKPUBLIC -->
    <div class="form-actions">
      <label class="checkbox inline">
      <input type="checkbox" name="public"{REPLY_PUBLIC}>
      {L_543} </label>
      <input type="hidden" name="is_question" value="0">
    </div>
    <!-- ENDIF -->
    <input type="hidden" name="csrftoken" value="{_CSRFTOKEN}">
    <div class="control-group">
      <label class="control-label" for="to">{L_241}:</label>
      <div class="controls">
        <input name="sendto" type="text" size="40" value="{REPLY_TO}" id="to">
      </div>
    </div>
    <div class="control-group">
      <label class="control-label" for="subject">{L_332}:</label>
      <div class="controls">
        <input name="subject" type="text" size="40" value="{REPLY_SUBJECT}" id="subject" maxlength="50">
      </div>
    </div>
    <div class="control-group">
      <label class="control-label" for="message">{L_333}:</label>
      <div class="controls">
        <textarea name="message" rows="5" id="message"></textarea>
      </div>
    </div>
    <div class="form-actions">
      <input type="hidden" name="hash" value="{HASH}">
      <input name="submit" type="submit" value="submit" class="btn btn-primary">
    </div>
  </form>
</div>
<hr />
