<small><span class="muted">{L_5117}&nbsp;{PAGE}&nbsp;{L_5118}&nbsp;{PAGES}</span></small>
<!-- IF B_FEATURED_ITEMS -->
<table class="table table-browse-center" style="margin-bottom:0">
  <tr>
    <th class="tr-image"> </th>
    <th class="tr-title"> </th>
    <th class="tr-bids"> <small>{L_169}</small> </th>
    <th class="hidden-phone tr-bindsno"> <small>{L_170}</small> </th>
    <th class="tr-timeleft hidden-phone"> <small>{L_171}</small> </th>
  </tr>
  <!-- BEGIN featured_items -->
  <tr class="table-row-click <!-- IF featured_items.B_BOLD -->

 highlighted

    <!-- ENDIF -->"   

  

  
  <!-- IF featured_items.B_BOLD -->
  style="font-weight: bold;"
  <!-- ENDIF -->
  >
  <td class="mini-img"><div class="tdb-image"> {featured_items.IMAGE} </div></td>
    <td><span class="list-title">{featured_items.TITLE}</span>
      <!-- IF B_SUBTITLE && featured_items.SUBTITLE ne '' -->
      <br />
      <span class="truncate-table"> {featured_items.SUBTITLE} </span>
      <!-- ENDIF -->
    </td>
    <td> {featured_items.BIDFORM} <em>{featured_items.BUY_NOW}</em></td>
    <td class="hidden-phone"><small>{featured_items.NUMBIDS}</small> </td>
    <td class="hidden-phone"><small><span class="muted">{featured_items.TIMELEFT}</span></small> </td>
  </tr>
  <!-- END featured_items -->
</table>
<!-- ENDIF -->
<table  class="table table-browse-center ">
  <tr>
    <th class="tr-image"> </th>
    <th class="tr-title"> </th>
    <th class="tr-bids"> <small>{L_169}</small> </th>
    <th class="hidden-phone tr-bindsno"> <small>{L_170}</small> </th>
    <th class="tr-timeleft  hidden-phone"> <small>{L_171}</small> </th>
  </tr>
  <!-- BEGIN items -->
  <tr class="table-row-click <!-- IF items.ROWCOLOUR --> highlighted<!-- ENDIF -->"

  
  <!-- IF items.B_BOLD -->
  style="font-weight: bold;"
  <!-- ENDIF -->
  >
  <td  class="mini-img"><div class="tdb-image"> {items.IMAGE} </div></td>
    <td><span class="list-title">{items.TITLE}</span>
      <!-- IF B_SUBTITLE && items.SUBTITLE ne '' -->
      <br />
      <span class="truncate-table"> {items.SUBTITLE} </span>
      <!-- ENDIF -->
    </td>
    <td> {items.BIDFORM} <em>{items.BUY_NOW}</em> </td>
    <td  class="hidden-phone"  style="text-align:center;"><small>{items.NUMBIDS}</small> </td>
    <td class="hidden-phone"><small><span class="muted">{items.TIMELEFT}</span></small> </td>
  </tr>
  <!-- END items -->
</table>
<hr  />
<div class="pagination pagination-centered pagination-large">
  <ul>
    <li>{PREV}</li>
    <!-- BEGIN pages -->
    <li>{pages.PAGE}</li>
    <!-- END pages -->
    <li>{NEXT}</li>
  </ul>
</div>
<hr  />
