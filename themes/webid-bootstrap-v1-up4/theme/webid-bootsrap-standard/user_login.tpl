<div class="span8 offset2 well">
  <legend>{L_181}</legend>
  <form name="user_login" action="{SSLURL}user_login.php" method="post" class="form-horizontal">
    <!-- IF ERROR ne '' -->
    <div class="alert">{ERROR}</div>
    <!-- ENDIF -->
    <div class="control-group">
      <label class="control-label" for="inputEmail">{L_187}</label>
      <div class="controls">
        <input type="text" name="username" size="20" maxlength="20" value="{USER}">
      </div>
    </div>
    <div class="control-group">
      <label class="control-label" for="inputEmail">{L_004}</label>
      <div class="controls">
        <input type="password" name="password" size="20" maxlength="20" value="">
      </div>
    </div>
    <div class="controls">
      <label class="checkbox">
      <input type="checkbox" name="rememberme" value="1">
      &nbsp;{L_25_0085} </label>
      <a href="forgotpasswd.php">{L_215}</a></div>
    <div class="form-actions">
      <button type="submit" class="btn btn-primary">{L_052}</button>
      <a class="btn" href="{SSLURL}register.php?">{L_235}</a>
      <input type="hidden" name="action" value="login">
    </div>
  </form>
</div>
</div>
