<div class="row-fluid">
<div class="span3">
  <div class="well" style="max-width: 340px; padding: 8px 0;">
    <ul class="nav nav-list">
      <li class="nav-header">{L_205}</li>
      <li><a href="{SITEURL}user_menu.php?cptab=summary">{L_25_0080}</a></li>
      <li><a href="{SITEURL}user_menu.php?cptab=account">{L_25_0081}</a></li>
      <!-- IF B_CAN_SELL -->
      <li><a href="{SITEURL}user_menu.php?cptab=selling">{L_25_0082}</a></li>
      <!-- ENDIF -->
      <li><a href="{SITEURL}user_menu.php?cptab=buying">{L_25_0083}</a></li>
    </ul>
  </div>
</div>
<!-- IF B_MENUTITLE -->
{UCP_TITLE}
<!-- ENDIF -->
<!-- IF B_ISERROR -->
<p class="errfont" style="background-color;#FF9933;display:block">{UCP_ERROR}</p>
<!-- ENDIF -->
