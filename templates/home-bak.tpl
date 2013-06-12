<div class="wrapper rounded-top rounded-bottom">
<table width="100%" border="0" cellpadding="0" cellspacing="0" class="smallpadding">
<tr>
	<td width="22%" valign="top" class="columL">
    <div class="titTable1 rounded-right">
    	{#L_276#}
    </div>
    <div class="smallpadding">
        <ul>
        {foreach $cat_list as $list}
            <li>
                <span style="background-color:{$list.COLOUR}">
                <a href="browse.php?id={$list.ID}">{$list.IMAGE}{$list.NAME}</a> {$list.CATAUCNUM}
                </span>
            </li>
        {/foreach}
        </ul>
        <a href="{$SITEURL}browse.php?id=0">{#L_277#}</a>
    </div>
</td>
<td valign="top">
    <table width="100%" border="0" cellspacing="0" cellpadding="0" class="maincolum">
    <tr>
        <td class="table2">
        {if $B_FEATURE}
            {foreach $featured as $ft}
                <div style="float:left;display:block;width:180px;margin:5px;background-color:#FFFEEE;border:#CCCCCC 1px solid;padding:5px;">
                    <div style="display:block;" align="center"><img src="{$ft.IMAGE}"></div>
                    <div style="display:block;" align="center"><a href="{$SITEURL}item.php?id={$ft.ID}">{$ft.TITLE}</a><br>{$ft.BID}</div>
                </div>
            {/foreach}
        {/if}
        </td>
    </tr>  
    {if $B_HOT_ITEMS}
    <tr>
        <td class="titTable4">{#L_279#}</td>
    </tr>
    <tr>
        <td class="table2">
        {foreach $hotitems as $ht}
            <div style="float:left;display:block;width:180px;margin:5px;background-color:#FFFEEE;border:#CCCCCC 1px solid;padding:5px;">
                <div style="display:block;" align="center"><img src="{$ht.IMAGE}"></div>
                <div style="display:block;" align="center"><a href="{$SITEURL}item.php?id={$ht.ID}">{$ht.TITLE}</a><br>{$ht.BID}</div>
            </div>
        {/foreach}
        </td>
    </tr>
    {/if}
    {if $B_AUC_LAST}
    <tr>
        <td class="titTable4">{#L_278#}</td>
    </tr>
    <tr>
        <td class="table2">
        {foreach $auc_last as $alast}
            <p style="display:block;" {$auc_last.BGCOLOUR}>{$auc_last.DATE} <a href="{$SITEURL}item.php?id={$alast.ID}">{$alast.TITLE}</a></p>
        {/foreach}
        </td>
    </tr>
    {/if}
    {if $B_AUC_ENDSOON}
    <tr>
        <td class="titTable4">{#L_280#}</td>
    </tr>
    <tr>
        <td class="table2">
        {foreach $end_soon as $esoon}
            <p style="display:block;" {$esoon.BGCOLOUR}>{$esoon.DATE} <a href="{$SITEURL}item.php?id={$esoon.ID}">{$esoon.TITLE}</a></p>
        {/foreach}
        </td>
    </tr>
    {/if}
    </table>
</td>
<td width="20%" valign="top" class="columR">
{if $B_MULT_LANGS}
    <div class="titTable1 rounded-left">
    	{#L_2__0001#}
    </div>
    <div class="smallpadding">
        {$FLAGS}
    </div>
{/if}
{if $B_LOGIN_BOX}
	{if $B_LOGGED_IN}
    <div class="titTable1 rounded-left">
    	{#L_200#} {$YOURUSERNAME}
    </div>
    <div class="smallpadding">
        <ul>
            <li><a href="{$SITEURL}edit_data.php?">{#L_244#}</a></li>
            <li><a href="{$SITEURL}user_menu.php">{#L_622#}</a></li>
            <li><a href="{$SITEURL}logout.php">{#L_245#}</a></li>
        </ul>
    </div>
	{else}
    <div class="titTable1 rounded-left">
    	{#L_221#}
    </div>
    <div class="smallpadding">
        <form name="login" action="{$SSLURL}user_login.php" method="post">
        <input type="hidden" name="csrftoken" value="{$_CSRFTOKEN}">
            <table width="100%">
            <tr>
                <td width="25%"><label for="username" title="please enter your username">{#L_003#}</label></td>
                <td width="75%"><input type="text" name="username" id="username" size="10" maxlength="20"></td>
            </tr>
            <tr>
                <td width="25%"><label for="password" title="please enter your password">{#L_004#}&nbsp;</label></td>
                <td width="75%"><input type="password" name="password" id="password" size="10" maxlength="20"></td>
            </tr>
            </table>
            <p><input type="checkbox" name="rememberme" id="rememberme" value="1"><label for="rememberme">&nbsp;{#L_25_0085#}</label></p>
            <p align="center"><input type="submit" name="action" value="{#L_275#}" class="button"></p>
            <p><a href="{$SITEURL}forgotpasswd.php">{#L_215#}</a></p>
        </form>
    </div>
	{/if}
{/if}
{if $B_HELPBOX}
    <div class="titTable1 rounded-left">
    	{#L_281#}
    </div>
    <div class="smallpadding">
        <ul>
        {foreach $helpbox as $help}
            <li><a href="{$SITEURL}viewfaqs.php?cat={$help.ID}" alt="faqs"  class="new-window">{$help.TITLE}</a></li>
        {/foreach}
        </ul>
    </div>
{/if}
{if $B_NEWS_BOX}
    <div class="titTable1 rounded-left">
    	{#L_282#}
    </div>
    <div class="smallpadding">
        <ul>
        {if $B_NEWSBOX}
            {foreach $newsbox as $nws}
                <li>{$nws.DATE} - <a href="viewnew.php?id={$nws.ID}">{$nws.TITLE}</a></li>
            {/foreach}
        {/if}
        </ul>
    </div>   
{/if}
	</td>
</tr>
</table>