<script type="text/javascript">

$(document).ready(function(){
//sell javascript
$("#bn_only_no").click(function () {
    $("#min_bid").removeAttr("disabled");
    $("#reserve_price").removeAttr("disabled");
    $("#iqty").attr("disabled", "disabled");
    $("#iqty").val("1");
});
$("#bn_only_yes").click(function () {
    $("#min_bid").attr("disabled", "disabled");
    $("#reserve_price").attr("disabled", "disabled");
    $("#iqty").removeAttr("disabled");
    $("#bn_yes").attr("checked", "checked");
    $("#bn").removeAttr("disabled");
});
$("#reserve_price").focus(function () {
    $("#with_reserve_yes").attr("checked", "checked");
});
$("#bn").focus(function () {
    $("#bn_yes").attr("checked", "checked");
});
$("#bn_no").click(function () {
    $("#bn").attr("disabled", "disabled");
    $("#bn_only_no").attr("checked", "checked");
    $("#min_bid").removeAttr("disabled");
    $("#reserve_price").removeAttr("disabled");
    $("#iqty").attr("disabled", "disabled");
    $("#iqty").val("1");
});
$("#bn_yes").click(function () {
    $("#bn").removeAttr("disabled");
});
$("#custominc").focus(function () {
    $("#inc2").attr("checked", "checked");
});
$("#atype").change(function () {
    if ($(this).attr("selectedIndex") == 1) { //dutch auction
        $("#with_reserve_no").attr("checked", "checked");
        $("#bn_no").attr("checked", "checked");
        $("#inc1").attr("checked", "checked");
        $("#iqty").removeAttr("disabled");
        $("#min_bid").removeAttr("disabled");
        $(".dutchhide").hide();
        $("#minval_text").text("{L_038}");
    } else { //normal auction
        $(".dutchhide").show();
        $("#iqty").attr("disabled", "disabled");
        $("#iqty").val("1");
        $("#minval_text").text("{L_020}");
    }
});
$("#bps").click(function () {
    $("#shipping_cost").removeAttr("disabled");
});
$("#sps").click(function () {
    $("#shipping_cost").attr("disabled", "disabled");
});
<!-- IF B_FEES -->
{FEE_JS}
// something
var min_bid_fee = {FEE_MIN_BID};
var bn = {FEE_BN};
var rp = {FEE_RP};
var st = {FEE_SUBTITLE};
var rl = {FEE_RELIST};
$("#min_bid").blur(function () {
    var min_bid = parseFloat($("#min_bid").val());
    updatefee(min_bid_fee * -1);
    min_bid_fee = 0; // just incase theres nothing
    if (min_bid == 0) {
        min_bid_fee = 0;
    } else {
        for (var i = 0; i < setup.length; i++) {
            if (setup[i][0] < min_bid && setup[i][1] > min_bid) {
                if (setup[i][3] == 'flat') {
                    min_bid_fee = setup[i][2];
                    updatefee(setup[i][2]);
                } else {
                    min_bid_fee = (setup[i][2] / 100) * min_bid;
                    updatefee(min_bid_fee);
                }
                break;
            }
        }
    }
});
$("#bn").blur(function () {
    bn();
});
$("#bn_yes").click(function () {
    bn();
});
$("#bn_no").click(function () {
    $("#bn").val(0);
    bn();
});

function bn() {
    if (bn != parseInt($("#bn").val())) {
        if (parseInt($("#bn").val()) > 0) updatefee(buyout_fee);
        else updatefee(buyout_fee * -1);
        bn = parseInt($("#bn").val());
    }
}
$("#reserve_price").blur(function () {
    reserve();
});
$("#with_reserve_yes").click(function () {
    reserve();
});
$("#with_reserve_no").click(function () {
    $("#reserve_price").val(0);
    reserve();
});

function reserve() {
    if (rp != parseInt($("#reserve_price").val())) {
        if (parseInt($("#reserve_price").val()) > 0) updatefee(rp_fee);
        else updatefee(rp_fee * -1);
        rp = parseInt($("#reserve_price").val());
    }
}
$("#is_featured").click(function () {
    if ($('#is_featured').is(':checked')) updatefee(hpfeat_fee);
    else updatefee(hpfeat_fee * -1);
});
$("#is_bold").click(function () {
    if ($('#is_bold').is(':checked')) updatefee(bolditem_fee);
    else updatefee(bolditem_fee * -1);
});
$("#is_highlighted").click(function () {
    if ($('#is_highlighted').is(':checked')) updatefee(hlitem_fee);
    else updatefee(hlitem_fee * -1);
});
<!-- IF B_SUBTITLE -->
$("#subtitle").blur(function () {
    if (st > 0 && $("#subtitle").val().length == 0) updatefee(subtitle_fee * -1);
    else updatefee(subtitle_fee);
    st = $("#subtitle").val().length;
});
<!-- ENDIF -->
<!-- IF B_AUTORELIST -->
$("#autorelist").blur(function () {
    var rl_times = $("#autorelist").val();
    updatefee(relist_fee * rl * -1);
    updatefee(relist_fee * rl_times);
    rl = rl_times;
});
<!-- ENDIF -->
function updatefee(newfee) {
    var nowfee = parseFloat($("#fee_exact").val()) + newfee;
    $("#fee_exact").val(nowfee);
    if (nowfee < 0) {
        nowfee = 0;
    }
    nowfee = nowfee.toFixed({FEE_DECIMALS});
    $("#to_pay").text(nowfee);
}
<!-- ENDIF -->
});


</script>
<!-- IF ATYPE_PLAIN eq 2 -->
<style type="text/css">

.dutchhide {

	display: none;

}

</style>
<!-- ENDIF -->
<div class="well">
  <legend> {TITLE}</legend>
  <a name="goto"></a>
  <!-- IF PAGE eq 0 -->
  <form name="sell" class="form-horizontal"  action="{ASSLURL}sell.php" method="post" enctype="multipart/form-data">
    <input type="hidden" name="csrftoken" value="{_CSRFTOKEN}">
    <!-- IF ERROR ne '' -->
    <div class="alert">{ERROR}</div>
    <!-- ENDIF -->
    <div class="control-group">
      <label class="control-label"><span class="muted">{L_287}</span></label>
      <div class="controls">
        <div style="padding:5px;"> {CAT_LIST1}
          <!-- IF CAT_LIST2 ne '' -->
          {CAT_LIST2}
          <!-- ENDIF -->
          <a href="select_category.php?change=yes" class="btn btn-small btn-info">{L_5113}</a> </div>
      </div>
    </div>
    <div class="control-group">
      <label class="control-label">{L_017}</label>
      <div class="controls">
        <input type="text" name="title" size="40" maxlength="70" value="{AUC_TITLE}">
      </div>
    </div>
    <!-- IF B_SUBTITLE -->
    <div class="control-group">
      <label class="control-label">{L_806}</label>
      <div class="controls">
        <input type="text" name="subtitle" id="subtitle" size="40" maxlength="70" value="{AUC_SUBTITLE}">
      </div>
    </div>
    <!-- ENDIF -->
    <div class="control-group">
      <label class="control-label">{L_018}</label>
      <div class="controls">
        <div class=""> {AUC_DESCRIPTION}
          <input type="hidden" name="imgtype" value="1">
        </div>
        <div class="clear"></div>
      </div>
    </div>
    <!-- IF B_GALLERY -->
    <hr  />
    <legend>{L_663}</legend>
    {L_673} {MAXPICS} {L_674}<br>
    <a href="upldgallery.php" alt="gallery" class="new-window btn btn-primary">{L_677}</a>
    <input type="hidden" name="numimages" value="{NUMIMAGES}" id="numimages">
    <hr  />
    <!-- ENDIF -->
    <div class="alert alert-info"> {L_640} </div>
    <div class="control-group">
      <label class="control-label">{L_257}</label>
      <div class="controls">{ATYPE}</div>
    </div>
    <div class="control-group">
      <label class="control-label">{L_258}</label>
      <div class="controls">
        <input type="text" name="iquantity" id="iqty" size="5" value="{ITEMQTY}" {ITEMQTYD}>
      </div>
    </div>
    <hr />
    <div class="control-group">
      <label class="control-label">{MINTEXT}</label>
      <div class="controls">
        <input type="text" size="10" name="minimum_bid" id="min_bid" value="{MIN_BID}" {BN_ONLY}>
        <small>{CURRENCY}&nbsp;&nbsp;(<a href="converter.php" alt="converter" class="new-window">{L_5010}</a>)</small> </div>
    </div>
    <div class="control-group">
      <label class="control-label">{L_023}</label>
      <div class="controls">
        <input type="text" size="10" name="shipping_cost" id="shipping_cost" value="{SHIPPING_COST}">
        <small>{CURRENCY}&nbsp;&nbsp;(<a href="converter.php" alt="converter" class="new-window">{L_5010}</a>)</small> </div>
    </div>
    <div class="control-group">
      <label class="control-label">{L_021}</label>
      <div class="controls">
        <label class="radio inline">
        <input type="radio" name="with_reserve" id="with_reserve_no" value="no" {RESERVE_N}>
        {L_029}</label>
        <label class="radio inline">
        <input type="radio" name="with_reserve" id="with_reserve_yes" value="yes" {RESERVE_Y}>
        {L_030}</label>
        <input type="text" name="reserve_price" id="reserve_price" size="10" value="{RESERVE}" {BN_ONLY}>
        <small>{CURRENCY}&nbsp;&nbsp;(<a href="converter.php" alt="converter" class="new-window">{L_5010}</a>)</small> </div>
    </div>
    <!-- IF B_BN_ONLY -->
    <div class="control-group dutchhide">
      <label class="control-label">{L_30_0063}</label>
      <div class="controls">
        <label class="radio inline">
        <input type="radio" name="buy_now_only" value="n" {BN_ONLY_N} id="bn_only_no">
        {L_029}</label>
        <label class="radio inline">
        <input type="radio" name="buy_now_only" value="y" {BN_ONLY_Y}  id="bn_only_yes">
        {L_030}</label>
      </div>
    </div>
    <!-- ENDIF -->
    <!-- IF B_BN -->
    <div class="control-group dutchhide">
      <label class="control-label">{L_496}</label>
      <div class="controls">
        <label class="radio inline">
        <input type="radio" name="buy_now" id="bn_no" value="no" {BN_N}>
        {L_029}</label>
        <label class="radio inline">
        <input type="radio" name="buy_now" id="bn_yes" value="yes" {BN_Y}>
        {L_030}</label>
        <input type="text" name="buy_now_price" id="bn" size="10" value="{BN_PRICE}" {BN}>
        <small>{CURRENCY}&nbsp;&nbsp;(<a href="converter.php" alt="converter" class="new-window">{L_5010}</a>) </small> </div>
    </div>
    <!-- ENDIF -->
    <!-- IF B_CUSINC -->
    <div class="control-group dutchhide">
      <label class="control-label">{L_120}</label>
      <div class="controls">
        <label class="radio ">
        <input type="radio" name="increments" id="inc1" value="1" {INCREMENTS1}>
        {L_614}</label>
        <label class="radio ">
        <input type="radio" name="increments" id="inc2" value="2" {INCREMENTS2}>
        {L_615}</label>
        <input type="text" name="customincrement" id="custominc" size="10" value="{CUSTOM_INC}">
        <small>{CURRENCY}&nbsp;&nbsp;(<a href="converter.php" alt="converter" class="new-window">{L_5010}</a>) </small> </div>
    </div>
    <!-- ELSE -->
    <input type="hidden" name="increments" id="inc1" value="1">
    <!-- ENDIF -->
    <hr />
    <!-- IF B_EDIT_STARTTIME -->
    <div class="control-group">
      <label class="control-label">{L_2__0016}</label>
      <div class="controls">
        <!-- IF B_EDITING -->
        {START_TIME}
        <input type="hidden" name="a_starts" value="{START_TIME}">
        <!-- ELSE -->
        <label class="radio ">{L_211}
        <input type="checkbox" name="start_now" id="s-now" {START_NOW}>
        </label>
        <label class="radio ">{L_260}
        <input type="text" name="a_starts" id="pubdate_input" value="{START_TIME}" size="20" maxlength="19">
        <script>$(function () {
    $("#pubdate_input").datepicker({
        altField: "#pubdate_input",
        altFormat: "dd-mm-yy",
        showOn: "button",
        buttonImage: "images/calendar.gif",
        buttonImageOnly: true
    });
    $('#pubdate_input').change(function () {
        $('#s-now').attr('checked', false);
    });
});
    </script>
        </label>
        <!-- ENDIF -->
      </div>
    </div>
    <!-- ELSE -->
    <input type="hidden" name="start_now" value="1">
    <!-- ENDIF -->
    <div class="control-group">
      <label class="control-label">{L_022}</label>
      <div class="controls"> {DURATIONS} </div>
    </div>
    <div class="control-group">
      <label class="control-label">{L_025}</label>
      <div class="controls">
        <label class="radio ">
        <input type="radio" name="shipping" id="bps" value="1" {SHIPPING1}>
        {L_031}</label>
        <label class="radio ">
        <input type="radio" name="shipping" id="sps" value="2" {SHIPPING2}>
        {L_032}</label>
        <label class="checkbox ">
        <input type="checkbox" name="international" value="1" {INTERNATIONAL}>
        {L_033}</label>
      </div>
    </div>
    <div class="control-group">
      <label class="control-label">{L_25_0215}</label>
      <div class="controls">
        <textarea name="shipping_terms" rows="3" cols="34">{SHIPPING_TERMS}</textarea>
      </div>
    </div>
    <hr />
    <div class="control-group">
      <label class="control-label">{L_026}</label>
      <div class="controls"> {PAYMENTS} </div>
    </div>
    <!-- IF B_MKFEATURED or B_MKBOLD or B_MKHIGHLIGHT -->
    <div class="control-group">
      <label class="control-label">{L_268}</label>
      <div class="controls">
        <!-- IF B_MKFEATURED -->
        <label class="checkbox ">
        <input type="checkbox" name="is_featured" id="is_featured" {IS_FEATURED}>
        {L_273}</label>
        <!-- ENDIF -->
        <!-- IF B_MKBOLD -->
        <label class="checkbox ">
        <input type="checkbox" name="is_bold" id="is_bold" {IS_BOLD}>
        {L_274}</label>
        <!-- ENDIF -->
        <!-- IF B_MKHIGHLIGHT -->
        <label class="checkbox ">
        <input type="checkbox" name="is_highlighted" id="is_highlighted" {IS_HIGHLIGHTED}>
        {L_292}</label>
        <!-- ENDIF -->
      </div>
    </div>
    <!-- ENDIF -->
    <!-- IF B_AUTORELIST -->
    <div class="control-group">
      <label class="control-label">{L__0161}</label>
      <div class="controls"> {RELIST} <span class="help-block">{L__0162}</span> </div>
    </div>
    <!-- ENDIF -->
    <!-- IF B_FEES -->
    <div class="control-group">
      <label class="control-label">{L_263}</label>
      <div class="controls">
        <input type="hidden" name="fee_exact" id="fee_exact" value="{FEE_VALUE}">
        <span id="to_pay"><strong>{FEE_VALUE_F}</strong></span> {CURRENCY} </div>
    </div>
    <!-- ENDIF -->
    <div class="form-actions">
      <input type="hidden" value="2" name="action">
      <button type="submit" class="btn btn-primary">{L_5189}</button>
      <button type="reset" class="btn">{L_5190}</button>
    </div>
  </form>
  <!-- ELSEIF PAGE eq 1 -->
  <form name="preview" action="{ASSLURL}sell.php" method="post">
    <input type="hidden" name="csrftoken" value="{_CSRFTOKEN}">
    <table class="table">
      <!-- IF ERROR ne '' -->
      <tr>
        <td class="alert" colspan="2" align="center">{ERROR}</td>
      </tr>
      <!-- ENDIF -->
      <div class="alert alert-info">{L_046}</div>
      <tr>
        <td width="40%" align="right"  valign="top"><b>{L_017}</b></td>
        <td width="60%" >{TITLE}</td>
      </tr>
      <!-- IF B_SUBTITLE -->
      <tr>
        <td width="40%" align="right"  valign="top"><b>{L_806}</b></td>
        <td width="60%" >{SUBTITLE}</td>
      </tr>
      <!-- ENDIF -->
      <tr>
        <td  valign="top" align="right"><b>{L_018}</b></td>
        <td>{AUC_DESCRIPTION}</td>
      </tr>
      <tr>
        <td  valign="top" align="right"><b>{L_019}</b></td>
        <td>{PIC_URL}</td>
      </tr>
      <!-- IF B_GALLERY -->
      <tr>
        <td width="260" valign="middle" align="right">&nbsp;</td>
        <td> {L_663}<br>
          <!-- BEGIN gallery -->
          <a href="{SITEURL}preview_gallery.php?img={gallery.K}" alt="preview" class="new-window"><img src="{gallery.IMAGE}" width=40 hspace=5 border=0></a>
          <!-- END gallery -->
        </td>
      </tr>
      <!-- ENDIF -->
      <!-- IF B_BN_ONLY -->
      <tr>
        <td valign="top" align="right"><b>{MINTEXT}</b></td>
        <td>{MIN_BID}</td>
      </tr>
      <!-- ENDIF -->
      <!-- IF ATYPE_PLAIN eq 1 -->
      <!-- IF B_BN_ONLY -->
      <tr>
        <td valign="top" align="right"><b>{L_021}</b></td>
        <td>{RESERVE}</td>
      </tr>
      <!-- ENDIF -->
      <!-- IF B_BN -->
      <tr>
        <td valign="top" align="right"><b>{L_496}</b></td>
        <td>{BN_PRICE}</td>
      </tr>
      <!-- ENDIF -->
      <!-- ENDIF -->
      <tr>
        <td valign="top" align="right"><b>{L_023}</b></td>
        <td>{SHIPPING_COST}</td>
      </tr>
      <tr>
        <td valign="top" align="right"><b>{L_2__0016}</b></td>
        <td>{STARTDATE}</td>
      </tr>
      <tr>
        <td valign="top" align="right"><b>{L_022}</b></td>
        <td>{DURATION}</td>
      </tr>
      <!-- IF B_CUSINC -->
      <tr>
        <td valign="top" align="right"><b>{L_120}</b> </td>
        <td>{INCREMENTS}</td>
      </tr>
      <!-- ENDIF -->
      <tr>
        <td valign="top" align="right"><b>{L_261}</b> </td>
        <td>{ATYPE}</td>
      </tr>
      <tr>
        <td valign="top" align="right"><b>{L_025}</b></td>
        <td>{SHIPPING}<br>
          {INTERNATIONAL}</td>
      </tr>
      <tr>
        <td align="right" valign="top"><b>{L_25_0215}</b></td>
        <td>{SHIPPING_TERMS}</td>
      </tr>
      <tr>
        <td valign="top" align="right"><b>{L_026}</b> </td>
        <td>{PAYMENTS_METHODS}</td>
      </tr>
      <tr>
        <td  valign="top" align="right"><b>{L_027}</b></td>
        <td> {CAT_LIST1}
          <!-- IF CAT_LIST2 ne '' -->
          <br>
          {CAT_LIST2}
          <!-- ENDIF -->
        </td>
      </tr>
      <!-- IF B_FEES -->
      <tr>
        <td valign="top" align="right"><b>{L_263}</b> </td>
        <td>{FEE}</td>
      </tr>
      <!-- ENDIF -->
      <tr> </tr>
      <!-- IF B_USERAUTH -->
      <tr>
        <td align="right">{L_003}</td>
        <td><b>{YOURUSERNAME}</b>
          <input type="hidden" name="nick" value="{YOURUSERNAME}">
      </tr>
      <tr>
        <td align="right">{L_004}</td>
        <td><input type="password" name="password" size="20" maxlength="20" value=""></td>
      </tr>
      <!-- ENDIF -->
    </table>
    <div class="alert alert-info">{L_264}<a href="{SITEURL}sell.php?mode=recall">{L_265}</a>{L_266}</div>
    <div class="form-actions">
      <input type="hidden" value="3" name="action">
      <input type="submit" name="" value="{L_2__0037}" class="btn btn-primary">
    </div>
  </form>
  <!-- ELSE -->
  <div style="text-align:center">
    <p>{L_100}{L_101}<a href="{SITEURL}item.php?id={AUCTION_ID}&mode=1">{SITEURL}item.php?id={AUCTION_ID}</a>
    <p> 
  </div>
  <!-- ENDIF -->
</div>
</div>
</div>
