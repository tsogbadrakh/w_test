<div class="content">
  <legend>{L_208}</legend>
  <div class="form-actions"> <a class="btn btn-primary" href="{SITEURL}item.php?id={AUCT_ID}"><i class="icon-chevron-left icon-white"></i> {L_138}</a> <a class="btn" href="{SITEURL}profile.php?user_id={ID}">{L_505}</a> </div>
  <div class="hero-unit">
    <h4>{L_185} </h4>
    <h2>{USERNICK} ({USERFB}){USERFBIMG}</h2>
  </div>
  <table class="table table-bordered" >
    <tr>
      <td  width="5%">&nbsp;</td>
      <td width="40%">{L_503}</td>
      <td class="hidden-phone" width="15%">{L_240}</td>
      <td width="15%">{L_259}</td>
      <td class="hidden-phone" width="15%">{L_364}</td>
    </tr>
    <!-- BEGIN fbs -->
    <tr>
      <td valign="top" width="5%"><img src="{fbs.IMG}" align="middle" alt=""> </td>
      <td  valign="top" width="40%"> {fbs.FEEDBACK} </td>
      <td class="hidden-phone" valign="top" width="15%"><a href="{fbs.USFLINK}">{fbs.USERNAME}</a> (<a href="{SITEURL}feedback.php?id={fbs.USERID}&faction=show">{fbs.USFEED}</a>) {fbs.USICON} </td>
      <td valign="top" width="15%"><small>{fbs.AUCTIONURL}</small> </td>
      <td class="hidden-phone" valign="top" width="15%"><small>{fbs.FBDATE}</small> </td>
    </tr>
    <!-- END fbs -->
  </table>
  {PAGENATION} </div>
</div>
</div>
