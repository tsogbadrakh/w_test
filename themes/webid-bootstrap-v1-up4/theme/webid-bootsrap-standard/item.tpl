<!-- IF B_COUNTDOWN -->
<script type="text/javascript">
$(document).ready(function () {
    var currenttime = '{ENDS_IN}';

    function padlength(what) {
        var output = (what.toString().length == 1) ? '0' + what : what;
        return output;
    }

    function displaytime() {
        currenttime -= 1;
        if (currenttime > 0) {
            var hours = Math.floor(currenttime / 3600);
            var mins = Math.floor((currenttime - (hours * 3600)) / 60);
            var secs = Math.floor(currenttime - (hours * 3600) - (mins * 60));
            var timestring = padlength(hours) + ':' + padlength(mins) + ':' + padlength(secs);
            $("#ending_counter").html(timestring);
            setTimeout(displaytime, 1000);
        } else {
            $("#ending_counter").html('<div class="alert">{L_911}</div');
        }
    }
    setTimeout(displaytime, 1000);
});
</script>
<!-- ENDIF -->
<div class="breadcrumb"> {L_041}: {TOPCATSPATH} </div>
<!-- IF B_USERBID -->
<div class="alert alert-success"> {YOURBIDMSG} </div>
<!-- ENDIF -->
<!-- IF B_CANEDIT -->
<div class="form-actions"> <a class="btn btn-primary" href="{SITEURL}edit_active_auction.php?id={ID}">{L_30_0069}</a> </div>
<!-- ENDIF -->
<div class="row">
<div class="span12">
<ul class="inline pull-right" style="margin-bottom:8px;">
  <li><small><a class="btn btn-mini" href="{SITEURL}friend.php?id={ID}"><i class="icon-user"></i> {L_106}</a></small></li>
  <!-- IF B_CANCONTACTSELLER -->
  <li><small><a class="btn btn-mini" href="{SITEURL}send_email.php?auction_id={ID}"><i class="icon-question-sign"></i> {L_922}</a></small> </li>
  <!-- ENDIF -->
  <!-- IF B_LOGGED_IN -->
  <li><small><a class="btn btn-mini" href="{SITEURL}item_watch.php?{WATCH_VAR}={ID}"><i class="icon-eye-open"></i> {WATCH_STRING}</a></small></li>
  <!-- ELSE -->
  <li><small><a class="btn btn-mini" href="{SITEURL}user_login.php?"><i class="icon-eye-open"></i> {L_5202}</a></small></li>
  <!-- ENDIF -->
</ul>
<div class="clearfix"></div>
<div class="row">
<!-- IF B_HASIMAGE -->
<div class="span3" style="text-align:center"> <img class="img-polaroid"

  

  

   src="{SITEURL}getthumb.php?w={THUMBWIDTH}&fromfile={PIC_URL}" border="0" align="center"><br>
  <!-- IF B_HASGALELRY -->
  <div> <a name="gallery"></a>
    <legend>{L_663}</legend>
    <div id="gallery">
      <!-- BEGIN gallery -->
      <a href="{SITEURL}{UPLOADEDPATH}{ID}/{gallery.V}" > <img class="img-polaroid" src="{SITEURL}getthumb.php?w={THUMBWIDTH}&fromfile={UPLOADEDPATH}{ID}/{gallery.V}"  width="100"> </a>
      <!-- END gallery -->
    </div>
  </div>
  <!-- ENDIF -->
</div>
<!-- ELSE -->
<div class="span3"> <img class="img-polaroid" src="{SITEURL}/themes/{THEME}/img/no-picture-gallery.png" alt="no picture" /> </div>
<!-- ENDIF -->
<div class="span5">
  <h3> {TITLE} </h3>
  <!-- IF SUBTITLE ne '' -->
  <h5>{SUBTITLE}</h5>
  <!-- ENDIF -->

  <!-- IF B_BUY_NOW -->
  <em>
  <p><small>{L_496}: 
    
    {BUYNOW2}</small></p>
  </em>
  <!-- ENDIF -->
  <!-- IF B_NOTBNONLY -->
  <!-- IF ATYPE eq 2 -->
  {L_038}: {MINBID}<br />
  <!-- ENDIF -->
  <div class="well" style="padding:4px; margin-bottom:10px;"> {L_116}: {MAXBID}</div>
  <!-- IF B_HASRESERVE -->
  &nbsp;<small>{L_514}</small>
  <!-- ENDIF -->
  <small>{L_119}: {NUMBIDS} {VIEW_HISTORY2}</small><br />
  <!-- ENDIF -->
  {L_023}: {SHIPPING_COST}<br />
  <small>{L_118}:
  <!-- IF B_COUNTDOWN -->
  <span id="ending_counter">{ENDS}</span><br />
  <!-- ELSE -->
  {ENDS}
  <!-- IF B_SHOWENDTIME -->
  ({ENDTIME})
  <!-- ENDIF -->
  <!-- ENDIF -->
  <p> {L_923}: {COUNTRY}<br />
    <b>{L_026}:</b> {PAYMENTS} </p>
  </small>
  <hr />
  <small>
  <!-- auction type -->
  {L_261}: {AUCTION_TYPE}<br />
  <!-- higher bidder -->
  <!-- IF B_HASBUYER -->
  {L_117}:
  <!-- BEGIN high_bidders -->
  <!-- IF B_BIDDERPRIV -->
  <b>{high_bidders.BUYER_NAME}</b>
  <!-- ELSE -->
  <a href="{SITEURL}profile.php?user_id={high_bidders.BUYER_ID}&auction_id={ID}"><b>{high_bidders.BUYER_NAME}</b></a> <b>(<a href="{SITEURL}feedback.php?id={high_bidders.BUYER_ID}&faction=show">{high_bidders.BUYER_FB}</a>)</b>
  <!-- ENDIF -->
  {high_bidders.BUYER_FB_ICON}<br />
  <!-- END high_bidders -->
  <!-- ENDIF -->
  <!-- IF QTY gt 1 -->
  {L_901}: {QTY}<br />
  <!-- ENDIF -->
  <!-- IF B_HASENDED -->
  {L_904}<br />
  <!-- ENDIF -->
  <span class="muted" style="font-weight:normal"> {L_611} {AUCTION_VIEWS} {L_612} </span> </small> </div>
<div class="span4">
<h4>{L_30_0209}</h4>
<a href='{SITEURL}profile.php?user_id={SELLER_ID}&auction_id={ID}'><b>{SELLER_NICK}</b></a> (<a href='{SITEURL}feedback.php?id={SELLER_ID}&faction=show'>{SELLER_TOTALFB}</a>)

    {SELLER_FBICON}
<ul class="seller-list">
<li><b>{L_5506}{SELLER_FBPOS}</b></li>
<li><small>{L_5509}{SELLER_NUMFB}{L__0151}</small></li>
<!-- IF SELLER_FBNEG ne 0 -->
<li><small>{SELLER_FBNEG}</small></li>
<!-- ENDIF -->
<li><small>{L_5508}{SELLER_REG}</small></li>
<small><a href="{SITEURL}active_auctions.php?user_id={SELLER_ID}">{L_213}</a> </small><br>
<br>
<!-- IF B_HASENDED eq false -->
<!-- IF B_NOTBNONLY -->
<div class="well" style="padding:8px;">
  <form name="bid" action="{BIDURL}bid.php" method="post">
    <!-- IF QTY gt 1 -->
    <label>{L_284}:</label>
    <input type="text" name="qty" size=15 />
    <span class="help-block">{QTY} {L_5408}</span>
    <!-- ENDIF -->
    <br />
    {L_121}
    <input type="text" name="bid" size="15">
    <input type="hidden" name="seller_id" value="{SELLER_ID}">
    <input type="hidden" name="title" value="{TITLE}" >
    <input type="hidden" name="category" value="{CAT_ID}" >
    <input type="hidden" name="id" value="{ID}">
    <input type="hidden" name="csrftoken" value="{_CSRFTOKEN}">
    <input type="submit" name="" value="{L_30_0208}" class="btn btn-primary btn-place-bid">
    <!-- IF ATYPE eq 1 -->
    <br />
    <span class="help-block"><small> {L_124}: {NEXTBID}</small> </span>
    <!-- ENDIF -->
  </form>
  <hr />
  <!-- IF B_BUY_NOW -->
  <div style=" text-align:center"> <em>
    <p><small>{L_496}: 
      
      {BUYNOW2}</small></p>
    </em> </span> </div>
  <!-- ENDIF -->
</div>
<!-- ELSE -->
{BUYNOW} <a href="{BIDURL}buy_now.php?id={ID}"><img border="0" align="absbottom" alt="{L_496}" src="{BNIMG}"></a>
<!-- ENDIF -->
<!-- ENDIF -->
<div style="text-align:right"> <small class="muted">{L_113}: {ID}</small> </div>
</div>
<div class="span12">
  <hr />
  <h3>{L_018}</h3>
  {AUCTION_DESCRIPTION} </div>
<!-- IF B_HAS_QUESTIONS -->
<div class="span12">
  <hr />
  <a name="questions"></a>
  <legend>{L_552}</legend>
  <!-- BEGIN questions -->
  <h4>{L_5239}</h4>
  <!-- BEGIN conv -->
  <strong>{questions.conv.BY_WHO}:</strong> <small>{questions.conv.MESSAGE}</small><br />
  <!-- END conv -->
  <!-- END questions -->
</div>
<!-- ENDIF -->
<div class="span12">
  <hr />
  <div class="row">
    <div class="span4">
      <legend>{L_724} </legend>
      <small>
      <!-- IF COUNTRY ne '' or ZIP ne '' -->
      <b>{L_014}:</b> {COUNTRY} ({ZIP})<br>
      <!-- ENDIF -->
      <b>{L_025}:</b> {SHIPPING}, {INTERNATIONAL}<br>
      <!-- IF SHIPPINGTERMS ne '' -->
      {L_25_0215}:</b> {SHIPPINGTERMS}
      <!-- ENDIF -->
      <!-- IF ! B_BUY_NOW_ONLY -->
      <b>
      <!-- IF ATYPE eq 1 -->
      {L_127}
      <!-- ELSE -->
      {L_038}
      <!-- ENDIF -->
      :</b> {MINBID}<br>
      <!-- ENDIF -->
      <b>{L_111}:</b> {STARTTIME}<br>
      <b>{L_112}:</b> {ENDTIME}<br>
      <b>{L_113}:</b> {ID}<br>
      </small> </div>
    <!-- IF B_SHOWHISTORY -->
    <div class="span8">
      <legend> {L_26_0001} </legend>
      <a name="history"></a>
      <table class="table table-condensed table-striped table-bordered">
        <tr>
          <th width="33%" align="center"><small>{L_176}</small></th>
          <th width="33%" align="center"><small>{L_130}</small></th>
          <th width="33%" align="center"><small>{L_175}</small></th>
          <!-- IF ATYPE eq 2 -->
          <th width="33%" align="center"><small>{L_284}</small></th>
          <!-- ENDIF -->
        </tr>
        <!-- BEGIN bidhistory -->
        <tr valign="top" {bidhistory.BGCOLOUR}>
          <td><!-- IF B_BIDDERPRIV -->
            <small>{bidhistory.NAME}</small>
            <!-- ELSE -->
            <a href="{SITEURL}profile.php?user_id={bidhistory.ID}"><small>{bidhistory.NAME}</small></a>
            <!-- ENDIF -->
          </td>
          <td align="center"><small>{bidhistory.BID}</small> </td>
          <td align="center"><small>{bidhistory.WHEN}</small> </td>
          <!-- IF ATYPE eq 2 -->
          <td align="center"><small>{bidhistory.QTY}</small> </td>
          <!-- ENDIF -->
        </tr>
        <!-- END bidhistory -->
      </table>
    </div>
    <!-- ENDIF -->
  </div>
</div>
<!--adding 4 latest bottom-->
<div class="span12" style="margin-top:30px">
  <div class="breadcrumb">{L_041}:</b> {CATSPATH}</div>
  <!-- IF SECCATSPATH ne '' -->
  <div class="breadcrumb">{L_814}:</b> {SECCATSPATH}</div>
  <!-- ENDIF -->
</div>
</div>
