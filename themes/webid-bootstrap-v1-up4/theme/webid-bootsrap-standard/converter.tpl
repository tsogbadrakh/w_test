<html>
<head>
<title>{SITENAME}</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link rel="stylesheet" type="text/css" href="{INCURL}themes/{THEME}/css/bootstrap.css">
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script type="text/javascript" src="{SITEURL}js/google_converter.js"></script>
</head>
<body>
<div class="container-fluid">
  <legend> {L_085}</legend>
  <form name="form1" method="post" action="">
    <input type="hidden" name="csrftoken" value="{_CSRFTOKEN}">
    <div id="results" class="alert alert-info">{CONVERSION}</div>
    <label>{L_082}</label>
    <input type="text" name="amount" id="amount" size="5" value="{AMOUNT}">
    <label>{L_083}</label>
    <select name="fromCurrency" id="fromCurrency">
      <!-- BEGIN from -->
      <option value="{from.VALUE}"

      
      <!-- IF from.B_SELECTED -->
      

       selected="true"
      <!-- ENDIF -->
      >{from.VALUE} {from.NAME}

      
      </option>
      <!-- END from -->
    </select>
    <label>{L_088}</label>
    <select name="toCurrency" id="toCurrency">
      <!-- BEGIN to -->
      <option value="{to.VALUE}"

      
      <!-- IF to.B_SELECTED -->
      

       selected="true"
      <!-- ENDIF -->
      >{to.VALUE} {to.NAME}

      
      </option>
      <!-- END to -->
    </select>
    <div class="form-actions">
    <input class="btn btn-primary" type="button" name="convert" id="convert" value="{L_25_0176}">
  </form>
  <input class="btn" type="button" value="Close" onClick="javascript:window.close()">
</div>
</div>
</body>
</html>
