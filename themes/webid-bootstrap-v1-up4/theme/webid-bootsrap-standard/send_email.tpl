<script type="text/javascript">
function SubmitFriendForm() {
    document.friend.submit();
}

function ResetFriendForm() {
    document.friend.reset();
}
</script>

<div class="form-actions"> <a class="btn btn-primary" href="item.php?id={AUCT_ID}"><i class="icon-chevron-left icon-white"></i> {L_138}</a> </div>
<div class="row">
  <div class="span6 offset3 well">
    <legend> {L_645} </legend>
    <!-- IF MESSAGE ne '' -->
    <div align="center" class="alert alert-info">{MESSAGE}</div>
    <!-- ELSE -->
    <FORM class="form-horizontal" NAME="sendemail" ACTION="send_email.php" METHOD=POST>
      <!-- IF ERROR ne '' -->
      <div class="alert alert-error"> {ERROR} </div>
      <!-- ENDIF -->
      <div class="control-group">
        <label class="control-label" for="inputEmail">{L_125}</label>
        <div class="controls" style="padding-top:5px;">
          <INPUT TYPE="HIDDEN" NAME="seller_nick" SIZE="25" VALUE="{SELLER_NICK}">
          <strong>{SELLER_NICK}</strong> </div>
      </div>
      <!-- IF B_LOGGED_IN eq false -->
      <div class="control-group">
        <label class="control-label" for="inputEmail">{L_006}</label>
        <div class="controls">
          <INPUT TYPE="text" NAME="sender_email" SIZE="25" VALUE="">
        </div>
      </div>
      <!-- ENDIF -->
      <div class="control-group">
        <label class="control-label" for="inputEmail">{L_017}</label>
        <div class="controls" style="padding-top:5px;">
          <INPUT TYPE="HIDDEN" NAME="item_title" SIZE="25" VALUE="{ITEM_TITLE}">
          <strong>{ITEM_TITLE}</strong> </div>
      </div>
      <div class="control-group">
        <label class="control-label" for="inputEmail">{L_002}</label>
        <div class="controls">
          <INPUT TYPE="TEXT" NAME="sender_name" SIZE="25" VALUE="{YOURUSERNAME}">
        </div>
      </div>
      <div class="control-group">
        <label class="control-label" for="inputEmail">{L_650}</label>
        <div class="controls">
          <TEXTAREA NAME="sender_question" COLS="35" ROWS="6">{SELLER_QUESTION}</TEXTAREA>
        </div>
      </div>
      <INPUT TYPE="hidden" NAME="seller_email" VALUE="{SELLER_EMAIL}">
	  <INPUT TYPE="hidden" name="csrftoken" value="{_CSRFTOKEN}"> 
      <INPUT TYPE="hidden" NAME="id" VALUE="{AUCT_ID}">
      <INPUT TYPE="hidden" NAME="action" VALUE="{L_106}">
      <div class="form-actions">
      <INPUT TYPE=submit NAME="" VALUE="{L_5201}"  class="btn btn-primary" />
      <!-- IF B_LOGGED_IN -->
      <INPUT TYPE="hidden" NAME="sender_email" SIZE="25" VALUE="{EMAIL}">
      <!-- ENDIF -->
      <INPUT TYPE=reset NAME="" VALUE="{L_035}" class="btn">
      <p>
        </TD>
      </p>
    </FORM>
    <!-- ENDIF -->
  </div>
</div>
</div>
