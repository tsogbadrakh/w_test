<!-- IF ERROR ne '' -->

<div class="alert alert-warning"> {ERROR} </div>
<!-- ENDIF -->
<!-- IF B_NOTBOUGHT -->
<form action="{ASSLURL}buy_now.php?id={ID}" method="post">
  <input type="hidden" name="csrftoken" value="{_CSRFTOKEN}">
  <!-- ENDIF -->
  <div class="row">
  <div class="span8 offset2 well">
  <legend> {TITLE} </legend>
  {L_017}: {TITLE}<br />
  <br />
  {L_125}: {SELLER} {SELLERNUMFBS} {FBICON}<br />
  <br />
  {L_497}:{BN_PRICE}<br />
  <br />
  <!-- IF ERROR ne '' -->
  <div class="alert alert-warning">{ERROR}</div>
  <!-- ENDIF -->
  <!-- IF B_NOTBOUGHT -->
  {L_284}:
  <!-- IF B_QTY -->
  <input type="text" name="qty" size="15" maxlength="15">
  {LEFT} {L_5408}
  <!-- ELSE -->
  <input type="hidden" name="qty" value="1">
  1
  <!-- ENDIF -->
  <br />
  {L_003}: {YOURUSERNAME}
  <!-- IF B_USERAUTH -->
  <label>{L_004}</label>
  <input type="password" name="password" size="15" maxlength="65">
  <!-- ENDIF -->
  <div class="form-actions">
    <input type="hidden" name="action" value="buy">
    <input type="submit" name="" value="{L_496}" class="btn btn-primary">
  </div>
</form>
<!-- ELSE -->
<div class="form-actions">
  <form name="" method="post" action="{SITEURL}pay.php?a=2" id="fees">
    <input type="hidden" name="csrftoken" value="{_CSRFTOKEN}">
    <input type="hidden" name="pfval" value="{ID}">
    <input type="submit" name="Pay" value="{L_756}" class="btn btn-primary">
  </form>
</div>
<!-- ENDIF -->
</div>
</div>
