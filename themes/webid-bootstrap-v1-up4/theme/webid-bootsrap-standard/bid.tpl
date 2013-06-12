<!-- IF TQTY gt 1 -->
<script type="text/javascript">

$(document).ready(function(){

	$("#qty").keydown(function(){

		$("#bidcost").text(($("#qty").val())*($("#bid").val()) + ' {CURRENCY}');

	});

	$("#bid").keydown(function(){

		$("#bidcost").text(($("#qty").val())*($("#bid").val()) + ' {CURRENCY}');

	});

});

</script>
<!-- ENDIF -->

<div class="content">
<div class="form-actions"> <a class="btn btn-primary" href="{SITEURL}item.php?id={ID}"><i class="icon-chevron-left icon-white"></i> {L_138}</a>{BID_HISTORY} </div>
<legend>
<!-- IF PAGE eq 1 -->
{L_152}
<!-- ELSE -->
{L_271}
<!-- ENDIF -->
</legend>
<!-- IF PAGE eq 1 -->
<!-- IF ERROR ne '' -->
<div class="alert"> {ERROR} </div>
<!-- ENDIF -->
<div class="row">
  <div class="span8 offset2">
    <form name="bid" action="{ASSLURL}bid.php" method="post">
      <input type="hidden" name="csrftoken" value="{_CSRFTOKEN}">
      <div class="row">
        <div class="span3"> {IMAGE} </div>
        <div class="span5"> <small>{L_154} </small><br />
          <strong> {TITLE}</strong>
          <hr />
          {L_116}
          
          {CURRENT_BID}
          <div class="well">
            <label>{L_156}</label>
            <input type="text" size="5" name="bid" id="bid" value="{BID}">
            <!-- IF ATYPE eq 1 -->
            <span class="help-block"><small>({L_283}: {NEXT_BID})</small></span>
            <!-- ENDIF -->
          </div>
          <!-- IF TQTY gt 1 -->
          <label>{L_284}:</label>
          <input type="text" size="3" name="qty" id="qty" value="{QTY}">
          <!-- ENDIF -->
          <!-- IF B_USERAUTH -->
          <hr />
          <small><span class="muted">{L_003}</span></small> <b>{YOURUSERNAME}</b><br />
          <label>{L_004}</label>
          <input type="password" name="password" size="20"  value="">
          <!-- ENDIF -->
        </div>
      </div>
      <div style="text-align:center; margin-top:20px;">
        <input type="hidden" name="id" value="{ID}">
        <div class="alert alert-info">{AGREEMENT}</div>
        <input type="hidden" name="action" value="bid">
        <input type="submit" name="Input" value="{L_5199}" class="btn btn-primary">
      </div>
    </form>
    <!-- ELSE -->
    {L_272}&nbsp; <a href="{SITEURL}item.php?id={ID}">{SITEURL}item.php?id={ID}</a><br>
    {L_699} {BID} {L_700}
    <!-- ENDIF -->
  </div>
</div>
