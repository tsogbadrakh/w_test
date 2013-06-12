<div class="row">
<div class="span3">
  <div class="well" style="max-width: 340px; padding: 8px 0;">
    <ul class="nav nav-list">
      <li class="nav-header">{L_205}</li>
      <li><a href="{SITEURL}user_menu.php?cptab=summary">{L_25_0080}</a></li>
      <li class="nav-header">{L_25_0081}</li>
      <li class="active"><a href="#">{L_621}</a></li>
      <li><a href="yourfeedback.php">{L_208}</a></li>
      <li><a href="buysellnofeedback.php">{L_207}</a> <small><span class="muted">{FBTOLEAVE}</span></small></li>
      <li><a href="mail.php">{L_623}</a> <small><span class="muted">{NEWMESSAGES}</span></small></li>
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
  <!-- IF B_MENUTITLE -->
  <legend>{UCP_TITLE}</legend>
  <!-- ENDIF -->
  <div class="hero-unit">
    <h2>{L_200} {NAME} <small>( {NICK} )</small></h2>
  </div>
  <!-- IF B_ISERROR -->
  <div class="alert">
    <button type="button" class="close" data-dismiss="alert">&times;</button>
    {UCP_ERROR} </div>
  <!-- ENDIF -->
  <form name="details" action="" method="post">
    <fieldset>
    <input type="hidden" name="csrftoken" value="{_CSRFTOKEN}">
    <label>{L_004}</label>
    <input type="password" name="TPL_password" size=20 maxlength="20">
    {L_050}
    <label>{L_005}</label>
    <input type="password" name="TPL_repeat_password" size=20 maxlength=20 />
    <span class="help-block">{L_617}</span>
    <label>{L_006}</label>
    <input type="text" name="TPL_email" size=50 maxlength=50 value="{EMAIL}">
    <label>{L_252}</label>
    {DATEFORMAT}
    <input class="input-small" type="text" name="TPL_year" size="4" maxlength="4" value="{YEAR}">
    <hr />
    <div class="row" style="margin-left:0;">
      <div class="span4">
        <label>{L_009}</label>
        <input class="span4"  type="text" name="TPL_address" size=40 maxlength=255 value="{ADDRESS}">
        <label>{L_010}</label>
        <input  class="span4" type="text" name="TPL_city" size=25 maxlength=25 value="{CITY}">
        <label>{L_011}</label>
        <input  class="span4" type="text" name="TPL_prov" size=10 maxlength=10 value="{PROV}">
      </div>
      <div class="span4">
        <label>{L_014}</label>
        <select class="span5" name="TPL_country">

				{COUNTRYLIST}

        </select>
        <label>{L_012}</label>
        <input  class="span4" type="text" name="TPL_zip" size=8 value="{ZIP}">
        <label>{L_013}</label>
        <input   class="span4"type="text" name="TPL_phone" size=40 maxlength=40 value="{PHONE}">
        <label>{L_346}</label>
        {TOMEZONE} </div>
    </div>
    <div class="row"  style="margin-left:0;">
      <div class="span4">
        <label>{L_352}</label>
        <label class="radio">
        <input type="radio" name="TPL_emailtype" value="html" {EMAILTYPE1} />
        {L_902} </label>
        <label class="radio">
        <input type="radio" name="TPL_emailtype" value="text" {EMAILTYPE2} />
        {L_915} </label>
      </div>
      <!-- IF B_NEWLETTER -->
      <div class="span4">
        <label>{L_603}</label>
        <label class="radio">
        <input type="radio" name="TPL_nletter" value="1" {NLETTER1} />
        {L_030} </label>
        <label class="radio">
        <input type="radio" name="TPL_nletter" value="2" {NLETTER2} />
        {L_029} </label>
        <span class="help-block alert alert-info">{L_609}</span> </div>
    </div>
    <!-- ENDIF -->
    <div class="form-actions">
      <button  type="submit" name="Input" class="btn btn-primary">{L_530}</button>
      <input type="reset" name="Input" class="btn">
      <input type="hidden" name="action" value="update">
    </div>
    <div class="hero-unit">
      <h2>{L_719}</h2>
    </div>
    <!-- IF B_PAYPAL -->
    <label>{L_720}</label>
    <input type="text" name="TPL_pp_email" size=40 value="{PP_EMAIL}">
    <!-- ENDIF -->
    <!-- IF B_AUTHNET -->
    <label>{L_773}</label>
    <input type="text" name="TPL_authnet_id" size=40 value="{AN_ID}">
    <label>{L_774}</label>
    <input type="text" name="TPL_authnet_pass" size=40 value="{AN_PASS}">
    <!-- ENDIF -->
    <!-- IF B_WORLDPAY -->
    <label>{L_824}</label>
    <input type="text" name="TPL_worldpay_id" size=40 value="{WP_ID}">
    <!-- ENDIF -->
    <!-- IF B_TOOCHECKOUT -->
    <label>{L_826}</label>
    <input type="text" name="TPL_toocheckout_id" size=40 value="{TC_ID}">
    <!-- ENDIF -->
    <!-- IF B_MONEYBOOKERS -->
    <label>{L_825}</label>
    <input type="text" name="TPL_moneybookers_email" size=40 value="{MB_EMAIL}">
    <!-- ENDIF -->
    <br />
    <div class="form-actions">
      <button  type="submit" name="Input" class="btn btn-primary">{L_530}</button>
      <input type="reset" name="Input" class="btn">
      <input type="hidden" name="action" value="update">
    </div>
    </fieldset>
  </form>
</div>
<!-- INCLUDE user_menu_footer.tpl -->
