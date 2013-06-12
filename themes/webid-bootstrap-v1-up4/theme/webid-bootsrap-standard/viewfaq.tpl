<html>
<head>
<title>{SITENAME}</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="themes/bootstrap-bid/style.css">
<link rel="stylesheet" type="text/css" href="themes/bootstrap-bid/css/bootstrap.css">
<meta http-equiv="Content-Type" content="text/html; charset={CHARSET}">
</head>
<body>
<div class="container-fluid" style="padding-top:10px">
  <div class="row-fluid">
    <div class="span6" > {LOGO} </div>
    <div class="span6" style="text-align:right"> <a href="faqs.php">{L_5243}</a> | <a class="btn btn-mini" href="javascript:window.close()">{L_678}</a> </div>
    <legend>{L_5236}</legend>
    <div class="padding">
      <form name="faqsindex" action="viewfaqs.php" method="post">
        <input type="hidden" name="csrftoken" value="{_CSRFTOKEN}">
        <select name="cat" onChange="document.faqsindex.submit()">
          <option value="">- {FNAME} -</option>
          <!-- BEGIN cats -->
          <option value="{cats.ID}">{cats.CAT}</option>
          <!-- END cats -->
        </select>
      </form>
      <legend>{FNAME}</legend>
      <ul class="nav nav-tabs nav-stacked">
        <!-- BEGIN faqs -->
        <li><a href="#faq{faqs.ID}">{faqs.Q}</a></li>
        <!-- END faqs -->
      </ul>
      <!-- BEGIN faqs -->
      <a name="faq{faqs.ID}"></a>
      <legend>{faqs.Q}</legend>
      <p>{faqs.A}</p>
      <p style="text-align:right"><a href="#top">{L_5245}</a></p>
      <!-- END faqs -->
    </div>
  </div>
</div>
</div>
</body>
</html>
