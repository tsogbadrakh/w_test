<div class="span8 offset2 well">
<legend>{L_001}</legend>
<!-- IF B_FIRST -->
<!-- IF ERROR ne '' -->
<div class="alert"> {ERROR} </div>
<!-- ENDIF -->
<form class="form-horizontal" name="registration" action="{SSLURL}register.php" method="post">
  <input type="hidden" name="csrftoken" value="{_CSRFTOKEN}">
  <div class="control-group">
    <label class="control-label" for="TPL_name">{L_002}</b> *</label>
    <div class="controls">
      <input type="text" name="TPL_name" size=40 maxlength=255 value="{V_YNAME}">
    </div>
  </div>
  <div class="control-group">
    <label class="control-label" >{L_003}</b> *</label>
    <div class="controls">
      <input type="text" name="TPL_nick" size=20 maxlength=20  value="{V_UNAME}">
      {L_050} </div>
  </div>
  <div class="control-group">
    <label class="control-label" >{L_004}</b> *</label>
    <div class="controls">
      <input type="password" name="TPL_password" size=20 maxlength=20 value="">
      {L_050} </div>
  </div>
  <div class="control-group">
    <label class="control-label" >{L_005}</b> *</label>
    <div class="controls">
      <input type="password" name="TPL_repeat_password" size=20 maxlength=20 value="">
    </div>
  </div>
  <div class="control-group">
    <label class="control-label" for="">{L_006} *</label>
    <div class="controls">
      <input type="text" name="TPL_email" size=50 maxlength=50 value="{V_EMAIL}">
    </div>
  </div>
  <!-- IF BIRTHDATE -->
  <div class="control-group">
    <label class="control-label" for="">{L_252} {REQUIRED(0)}</label>
    <div class="controls register-date"> {L_DATEFORMAT}
      <input type="text" name="TPL_year" size="4" maxlength="4" value="{V_YEAR}">
    </div>
  </div>
  <!-- ENDIF -->
  <!-- IF ADDRESS -->
  <div class="control-group">
    <label class="control-label" for="">{L_009} {REQUIRED(1)}</label>
    <div class="controls">
      <input type="text" name="TPL_address" size=40 maxlength=255 value="{V_ADDRE}">
    </div>
  </div>
  <!-- ENDIF -->
  <!-- IF CITY -->
  <div class="control-group">
    <label class="control-label" for="">{L_010} {REQUIRED(2)}</label>
    <div class="controls">
      <input type="text" name="TPL_city" size=25 maxlength=25 value="{V_CITY}">
    </div>
  </div>
  <!-- ENDIF -->
  <!-- IF PROV -->
  <div class="control-group">
    <label class="control-label" for="">{L_011} {REQUIRED(3)}</label>
    <div class="controls">
      <input type="text" name="TPL_prov" size=10 maxlength=10 value="{V_PROV}">
    </div>
  </div>
  <!-- ENDIF -->
  <!-- IF COUNTRY -->
  <div class="control-group">
    <label class="control-label" for="">{L_014} {REQUIRED(4)}</label>
    <div class="controls">
      <select name="TPL_country">
        <option value="">{L_251}</option>
     
								{L_COUNTRIES}

      </select>
    </div>
  </div>
  <!-- ENDIF -->
  <!-- IF ZIP -->
  <div class="control-group">
    <label class="control-label" for="">{L_012} {REQUIRED(5)}</label>
    <div class="controls">
      <input type="text" name="TPL_zip" size=8 value="{V_POSTCODE}">
    </div>
  </div>
  <!-- ENDIF -->
  <!-- IF TEL -->
  <div class="control-group">
    <label class="control-label" for="">{L_013} {REQUIRED(6)}</label>
    <div class="controls">
      <input type="text" name="TPL_phone" size=40 maxlength=40 value="{V_PHONE}">
    </div>
  </div>
  <!-- ENDIF -->
  <div class="control-group">
    <label class="control-label" for="">{L_346}</label>
    <div class="controls"> {TOMEZONE} </div>
  </div>
  <!-- IF B_NLETTER -->
  <div class="control-group">
    <label class="control-label" for="">{L_608}</label>
    <div class="controls">
      <label class="radio inline">
      <input type="radio" name="TPL_nletter" value="1" {V_YNEWSL}>
      {L_030}</label>
      <label class="radio inline">
      <input type="radio" name="TPL_nletter" value="2" {V_NNEWSL}>
      {L_029}</label>
    </div>
  </div>
  </div>
  <!-- ENDIF -->
  <div class="span8 offset2 well">
  <legend>{L_719}</legend>
  <!-- IF B_PAYPAL -->
  <div class="control-group">
    <label class="control-label" for="">{L_720}{REQUIRED(7)}</label>
    <div class="controls">
      <input type="text" name="TPL_pp_email" size=40 value="{PP_EMAIL}">
    </div>
  </div>
  <!-- ENDIF -->
  <!-- IF B_AUTHNET -->
  <div class="control-group">
    <label class="control-label" for="">{L_773}{REQUIRED(8)}</label>
    <div class="controls">
      <input type="text" name="TPL_authnet_id" size=40 value="{AN_ID}">
    </div>
  </div>
  <div class="control-group">
    <label class="control-label" for="">{L_774}{REQUIRED(8)}</label>
    <div class="controls">
      <input type="text" name="TPL_authnet_pass" size=40 value="{AN_PASS}">
    </div>
  </div>
  <!-- ENDIF -->
  <!-- IF B_WORLDPAY -->
  <div class="control-group">
    <label class="control-label" for="">{L_824}{REQUIRED(9)}</label>
    <div class="controls">
      <input type="text" name="TPL_worldpay_id" size=40 value="{WP_ID}">
    </div>
  </div>
  <!-- ENDIF -->
  <!-- IF B_TOOCHECKOUT -->
  <div class="control-group">
    <label class="control-label" for="">{L_826}{REQUIRED(10)}</label>
    <div class="controls">
      <input type="text" name="TPL_toocheckout_id" size=40 value="{TC_ID}">
    </div>
  </div>
  <!-- ENDIF -->
  <!-- IF B_MONEYBOOKERS -->
  <div class="control-group">
    <label class="control-label" for=""> {L_825}{REQUIRED(11)} </label>
    <div class="controls">
      <input type="text" name="TPL_moneybookers_email" size=40 value="{MB_EMAIL}">
    </div>
  </div>
  <!-- ENDIF -->
  {CAPCHA}
  <div class="clear"></div>
  <div style="margin:55px 5px 5px 5px">
    <label class="checkbox">
    <input type="checkbox" name="terms_check" id="terms_check">
    {L_858} </label>
  </div>
  <input type="hidden" name="action" value="first">
  <div class="form-actions">
    <button type="submit" class="btn btn-primary">{L_235}</button>
    <button type="button" class="btn">{L_035}</button>
  </div>
</form>
</div>
</div>
<!-- ELSE -->
<div class="padding">
  <h2>{L_HEADER}</h2>
  <p>{L_MESSAGE}</p>
  <p>{L_860}</p>
</div>
<!-- ENDIF -->
</div>
</div>
