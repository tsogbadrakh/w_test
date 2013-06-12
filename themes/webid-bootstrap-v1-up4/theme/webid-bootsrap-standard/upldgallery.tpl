<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>{SITENAME}</title>
<link rel="stylesheet" type="text/css" href="themes/{THEME}/style.css">
<link rel="stylesheet" type="text/css" href="themes/{THEME}/css/bootstrap.css">
<style media="all" type="text/css">
.imgareaselect-border1 {
	background: url(images/border-v.gif) repeat-y left top;
}

.imgareaselect-border2 {
    background: url(images/border-h.gif) repeat-x left top;
}

.imgareaselect-border3 {
    background: url(images/border-v.gif) repeat-y right top;
}

.imgareaselect-border4 {
    background: url(images/border-h.gif) repeat-x left bottom;
}

.imgareaselect-border1, .imgareaselect-border2,
.imgareaselect-border3, .imgareaselect-border4 {
    opacity: 0.5;
    filter: alpha(opacity=50);
}

.imgareaselect-handle {
    background-color: #fff;
    border: solid 1px #000;
    opacity: 0.5;
    filter: alpha(opacity=50);
}

.imgareaselect-outer {
    background-color: #000;
    opacity: 0.5;
    filter: alpha(opacity=50);
}
</style>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript">
$(document).ready(function () {
	var num_images = $('#numimages', window.opener.document).val();
	var now_images = {NUMIMAGES};
	var image_cost = {IMAGE_COST};
	if (num_images != now_images) {
		var fee_diff = (now_images - num_images) * image_cost;
		var nowfee = $("#fee_exact", window.opener.document).val() + fee_diff;
		$("#fee_exact", window.opener.document).val(nowfee);
		$("#to_pay").text(Math.round(nowfee*1{FEE_DECIMALS})/1{FEE_DECIMALS});
		$('#numimages', window.opener.document).val(now_images);
	}
});
</script>
<!-- IF B_CROPSCREEN -->

<script type="text/javascript">


$(document).ready(function () {
	$('#save_thumb').click(function() {
		var x1 = 0;
		var y1 = 0;
		var x2 = 0;
		var y2 = 0;
		var w = 0;
		var h = 0;
		
			return true;
		
	});
});

$(window).load(function () {
	$('#thumbnail').imgAreaSelect({ aspectRatio: '{RATIO}', onSelectChange: preview, x1: 0, y1: 0, x2: 0, y2: 0 });
});

</script>
<!-- ENDIF -->
</head>
<body>
<div class="container-fluid" style="padding-bottom:10px">
  <!-- IF B_CROPSCREEN -->
  <div style="color:#000000;" align="center">
    
    <img src="{IMGPATH}" style="width:200px; height:200px;" id="thumbnail" alt="Create Thumbnail"><br>
    <small>{L_613}</small>
    <div style="overflow:hidden; display:none; border:#000000 double; {THUMBWH}"> <img src="{IMGPATH}" style="position: relative;" alt="Thumbnail Preview" id="thumbprev"> </div>
    <form name="thumbnail" action="?action=crop&img={IMAGE}" method="post">
      <input type="hidden" name="csrftoken" value="{_CSRFTOKEN}">
      <input type="hidden" name="x1" value="0" id="x1">
      <input type="hidden" name="y1" value="0" id="y1">
      <input type="hidden" name="x2" value="{STARTX}" id="x2">
      <input type="hidden" name="y2" value="{STARTY}" id="y2">
      <input type="hidden" name="w" value="50" id="w">
      <input type="hidden" name="h" value="50" id="h">
      <br>
      <input type="submit" class="btn btn-primary" name="upload_thumbnail" value="{L_616}" id="save_thumb">
      <input type="submit" class="btn" name="upload_thumbnail" value="{L_618}" style="display:none" >
    </form>
  
  </div>
  <!-- ELSE -->
  <form name="upload" class="form-horizontal" action="" method="post" enctype="multipart/form-data">
    <input type="hidden" name="csrftoken" value="{_CSRFTOKEN}">
    <legend>{L_663}</legend>
    <div class="alert alert-info"> {L_673} {MAXIMAGES} {L_674}<br>
      {L_679} </div>
    <!-- IF ERROR ne '' -->
    <div class="alert"> {ERROR} </div>
    <!-- ENDIF -->
    <!-- IF B_CANUPLOAD -->
    <div class="control-group">
      <label class="control-label" > <span class="badge badge-info">1</span><br>
      {L_680} </label>

      <div class="controls">
        <input type="file" class="" name="userfile" size="5" >
      </div>
    </div>
    <div class="control-group">
      <label class="control-label" > <span class="badge badge-info">2</span> <br>
      {L_681}</label>
      <div class="controls">
        <input class="btn" type="submit" name="uploadpicture" value="{L_681}">
      </div>
    </div>
    <div class="alert alert-info"> {L_682} </div>
    <!-- ELSE -->
    <div class="alert"> {L_688} {MAXIMAGES} {L_689} </div>
    <!-- ENDIF -->
    <!-- ENDIF -->
    <br style="clear:both;">
    <br>
    <legend>{L_687}</legend>
    <table class="table table-bordered table-striped">
      <tr bgcolor="{HEADERCOLOUR}">
        <td width="46%"><small>{L_684}</small></td>
        <td width="30%"><small>{L_685}</small></td>
        <td width="12%" align="center"><small>{L_008}</small></td>
        <td width="12%" align="center"><small>{L_686}</small></td>
      </tr>
      <!-- BEGIN images -->
      <tr>
        <td> <small>{images.IMGNAME}</small> </td>
        <td> <small>{images.IMGSIZE}</small> </td>
        <td align="center"><a href="?action=delete&img={images.ID}"><i class="icon-trash"></i></a> </td>
        <td align="center"><a href="?action=makedefault&img={images.IMGNAME}"><img src="images/{images.DEFAULT}" border="0"></a> </td>
      </tr>
      <!-- END images -->
    </table>
    <center>
      <input type="submit" class="btn btn-primary" name="creategallery" value="{L_683}">
    </center>
  </form>
  <br>
  <br>
  <center>
    <a class="btn" href="javascript: window.close()">{L_678}</a>
  </center>
</div>
</body>
</html>
