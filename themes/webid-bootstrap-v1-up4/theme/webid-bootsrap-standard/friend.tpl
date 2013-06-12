
<div class="form-actions"> <a class="btn btn-primary" href="item.php?id={ID}"> <i class="icon-chevron-left icon-white"></i> {L_138}</a> </div>
<!-- IF EMAILSENT eq '' -->
<div align="center" class="alert alert-info"> <strong>{L_017} : {TITLE}</strong><br />
  {L_146} <strong>{FRIEND_EMAIL}</strong> <br />
  <br />
</div>
<!-- ELSE -->
<div class="row">
  <div class="span8 offset2 well">
    <legend>{L_139}</legend>
    <form class="form-horizontal" name="friend" action="friend.php" method="post">
      <input type="hidden" name="csrftoken" value="{_CSRFTOKEN}">
      <!-- IF ERROR ne '' -->
      <div align="center" class="alert alert-error">{ERROR}</div>
      <!-- ENDIF -->
      <strong>{L_017}</strong><br />
      {TITLE}<br />
      <br />
      <div class="control-group">
        <label class="control-label" for="inputEmail">{L_140}</label>
        <div class="controls">
          <input type="text" name="friend_name" size="25" value="{FRIEND_NAME}">
        </div>
      </div>
      <div class="control-group">
        <label class="control-label" for="inputEmail">{L_141}</label>
        <div class="controls">
          <input type="text" name="friend_email" size="25" value="{FRIEND_EMAIL}">
        </div>
      </div>
      <div class="control-group">
        <label class="control-label" for="inputEmail">{L_002}</label>
        <div class="controls">
          <input type="text" name="sender_name" size="25" value="{YOUR_NAME}">
        </div>
      </div>
      <div class="control-group">
        <label class="control-label" for="inputEmail">{L_143}</label>
        <div class="controls">
          <input type="text" name="sender_email" size="25" value="{YOUR_EMAIL}">
        </div>
      </div>
      <div class="control-group">
        <label class="control-label" for="inputEmail">{L_144}</label>
        <div class="controls">
          <textarea name="sender_comment" cols="30" rows="6">{COMMENT}</textarea>
        </div>
      </div>
      {CAPCHA}
      <div class="form-actions" style="margin-top:40px">
        <input type="hidden" name="id" value="{ID}">
        <input type="hidden" name="item_title" value="{TITLE}">
        <input type="hidden" name="action" value="sendmail">
        <input type="submit" name="" value="{L_5201}" class="btn btn-primary">
        <input type="reset" name="" value="{L_035}" class="btn">
      </div>
    </form>
  </div>
  <!-- ENDIF -->
</div>
</div>
