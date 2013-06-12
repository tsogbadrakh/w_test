<!-- IF B_AUCID -->
<div class="form-actions"> <a class="btn btn-primary" href="{SITEURL}item.php?id={AUCTION_ID}">{L_138}</a> </div>
<!-- ENDIF -->
<legend> {L_206}<br />
</legend>
<div class="row">
<div class="span4">
  <div class="hero-unit"> <b>{USER} ({SUM_FB})</b>{RATE_VAL}<br>
  </div>
  <!-- IF B_VIEW -->
  <div class="well" style="padding:8px 0px;">
    <ul class="nav nav-list" style="margin-bottom:8px;">
      <li><a href="{SITEURL}active_auctions.php?user_id={USER_ID}"><i class="icon-star"></i> {L_213}</a></li>
      <li><a href="{SITEURL}closed_auctions.php?user_id={USER_ID}"><i class="icon-star-empty"></i> {L_214}</a></li>
      <!-- IF B_CONTACT -->
      <li><a href="{SITEURL}email_request.php?user_id={USER_ID}&amp;username={USER}"><i class="icon-envelope"></i> {L_210}{USER}</a></li>
      <!-- ENDIF -->
      <li><a href="{SITEURL}feedback.php?id={USER_ID}&amp;faction=show"><i class="icon-comment"></i> {L_208}</a></li>
    </ul>
  </div>
  {L_209} <b>{REGSINCE}</b><br>
  {L_240} <b>{COUNTRY}</b><br>
  {L_502} <b>{NUM_FB}</b><br>
  {FB_POS}
  
  {FB_NEUT}
  
  {FB_NEG} </div>
<div class="span8">
  <legend>{L_385}</legend>
  <table class="table table-condensed">
    <tr style="border:none">
      <td style="border:none; text-align:center" width="25%">&nbsp;</td>
      <td style="border:none; text-align:center" width="25%"><img src="{SITEURL}images/positive.png"></td>
      <td style="border:none; text-align:center" width="25%"><img src="{SITEURL}images/neutral.png"></td>
      <td style="border:none; text-align:center" width="25%"><img src="{SITEURL}images/negative.png"></td>
    </tr>
    <tr>
      <td>{L_386}</td>
      <td style="text-align:center; color:#009933">{FB_LASTMONTH_POS}</td>
      <td style="text-align:center">{FB_LASTMONTH_NEUT}</td>
      <td style="text-align:center;color:#FF0000">{FB_LASTMONTH_NEG}</td>
    </tr>
    <tr>
      <td>{L_387}</td>
      <td style="text-align:center; color:#009933">{FB_LAST3MONTH_POS}</td>
      <td style="text-align:center">{FB_LAST3MONTH_NEUT}</td>
      <td style="text-align:center; color:#FF0000" style="">
      {FB_LAST3MONTH_NEG}
      </td>
    </tr>
    <tr>
      <td>{L_388}</td>
      <td style="text-align:center; color:#009933">{FB_LASTYEAR_POS}</td>
      <td style="text-align:center">{FB_LASTYEAR_NEUT}</td>
      <td style="text-align:center; color:#FF0000">{FB_LASTYEAR_NEG}</td>
    </tr>
    <tr valign="top">
      <td colspan="4" ><img src="{SITEURL}images/transparent.gif" width="1" height="5"></td>
    </tr>
    <tr>
      <td>{L_389}</td>
      <td style="text-align:center; color:#009933">{FB_SELLER_POS}</td>
      <td style="text-align:center">{FB_SELLER_NEUT}</td>
      <td style="text-align:center; color:#FF0000">{FB_SELLER_NEG}</td>
    </tr>
    <tr>
      <td>{L_390}</td>
      <td style="text-align:center; color:#009933">{FB_BUYER_POS}</td>
      <td style="text-align:center">{FB_BUYER_NEUT}</td>
      <td style="text-align:center; color:#FF0000">{FB_BUYER_NEG}</td>
    </tr>
  </table>
  </td>
  </tr>
  </table>
</div>
<!-- ELSE -->
<div class="info"> {MSG}</div>
<!-- ENDIF -->
