<div class="content">
  <legend>{L_207}</legend>
  <!-- IF ERROR ne '' -->
  <div class="alert"> {ERROR} </div>
  <!-- ENDIF -->
  <form name="addfeedback" action="{SSLURL}feedback.php?wid={WID}&sid={SID}&ws={WS}" method="post">
    <input type="hidden" name="csrftoken" value="{_CSRFTOKEN}">
    <div class="well span8 offset2">
    <legend>{L_168}:<br />
    <small><a href="{SITEURL}item.php?id={AUCT_ID}">{AUCT_TITLE}</a></small></legend>
    <hr />
    {SBMSG}: <a href="{SITEURL}profile.php?user_id={THEM}&auction_id={AUCT_ID}">{USERNICK}</a> (<a href="{SITEURL}feedback.php?id={THEM}&faction=show">{USERFB}</a>) {USERFBIMG}
    <hr />
    <label>{L_503}:</b> </label>
    <label class="checkbox inline">
    <input type="radio" name="TPL_rate" value="1" {RATE1}>
    <img src="{SITEURL}images/positive.png"border="0" alt="+1"> </label>
    <label class="checkbox inline">
    <input type="radio" name="TPL_rate" value="0" {RATE2}>
    <img src="{SITEURL}images/neutral.png" border="0" alt="0"> </label>
    <label class="checkbox inline">
    <input type="radio" name="TPL_rate" value="-1" {RATE3}>
    <img src="{SITEURL}images/negative.png" border="0" alt="-1"> </label>
    <hr />
    <label>{L_227}:</label>
    <input name="TPL_feedback" type="text" class="input-block-level" value="{FEEDBACK}" />
    <!-- IF B_USERAUTH -->
    <hr />
    <label>{L_188}:</label>
    <input type="password" name="TPL_password" size="20" maxlength="20" value="">
    <hr />
    <!-- ENDIF -->
    <div class="form-actions">
      <input type="submit" name="" value="{L_207}" class="btn btn-primary">
      <input type="reset" name="" class="btn">
    </div>
    <input type="hidden" name="TPL_nick_hidden" value="{USERNICK}">
    <input type="hidden" name="addfeedback" value="true">
    <input type="hidden" name="auction_id" value="{AUCT_ID}">
  </form>
  </label>
</div>
