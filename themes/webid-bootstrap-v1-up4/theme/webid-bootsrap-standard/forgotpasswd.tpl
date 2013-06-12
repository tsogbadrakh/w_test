<div class="span8 offset2 well">
  <legend>{L_215}</legend>
  <!-- IF B_FIRST -->
  <form name="user_login" action="" method="post" class="form-horizontal">
    <input type="hidden" name="csrftoken" value="{_CSRFTOKEN}">
    <!-- IF ERROR ne '' -->
    <div class="alert">{ERROR}</div>
    <!-- ENDIF -->
    {L_2__0039}
	<hr />

    <div class="control-group">
      <label class="control-label"> {L_003}</label>
      <div class="controls">
        <input type="text" NAME="TPL_username" size="25" value="{USERNAME}">
      </div>
    </div>
    <div class="control-group">
      <label class="control-label">{L_006}</label>
      <div class="controls">
        <input type="text" NAME="TPL_email" size="25" value="{EMAIL}">
      </div>
    </div>
    <div class="form-actions">
      <input type="submit" name="" value="{L_5431}" class="btn btn-primary">
    </div>
    <input type="hidden" name="action" value="ok">
  </form>
  <!-- ELSE -->
  {L_217}
  <!-- ENDIF -->
</div>
