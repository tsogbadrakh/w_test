{literal}
<style type="text/css">.box {height: 100; width:300;}</style>
<script type="text/javascript">
</script>
{/literal}
<div class="content">
	<div class="wb-slct-tab">
	<div class="wb-slct-title">{#L_028#}</div>
		<a name="goto"></a>
		<form name="catform" id="catform" action="select_category.php#goto" method="post">
                <input type="hidden" name="csrftoken" value="{$_CSRFTOKEN}">
		<input type="hidden" name="action" value="process">
		<table width="80%" border="0" cellpadding="4" class="content">
		<tr>
		  <td colspan="2" valign="top">
                         {if $CAT_NO eq 2}{else}{/if}
                         <div style="display:none">{#L_2__0041#} {$COST}</div>
                         <div style="display:none">{#L_2__0038#}</div>
                        {*{$cat0}<br/>{$cat1}<br/>{$B_N}*}
		  </td>
		</tr>
{if $ERROR}{/if}
		<tr> 
		  <td colspan="2" class="errfont">
                      <div style="display:none">{$ERROR}</div>
		  </td>
		</tr>
		<tr id="selbx1"> 
		  <td align="center" style="">
			  <select name="cat" catno="0" class="box" size="15" style="width:230px;">
                        {foreach $sbox as $bc}
                                    <option value="{$bc.value}" {$bc.selected}>{$bc.catname}</option>
                        {/foreach}
			  </select>
		   </td>
		</tr>
		<tr></tr>
		<tr>
		  <td colspan="3">&nbsp;{*{$test}*}</td>
		</tr>
		<tr>
		  <td align="center" colspan="3" >
{if $B_SHOWBUTTON}{/if}
                  <input type="button" style="display:none" name="submitit" value="{#L_2__0047#}" class="button">
		  </td>
		</tr>
		</table>
		</form>
{if $CAT_NO eq 2 && ! $B_SHOWBUTTON}
		<div class="padding" style="text-align:right; display:none">
		<form name="callnextform" action="sell.php" method="post">
        	<input type="hidden" name="csrftoken" value="{$_CSRFTOKEN}">
			<input type="hidden" name="act" value="skipexcat">
			<input type="submit" name="submitit" value="{#L_805#}" class="button">
		</form>
		</div>
{/if}
	</div>
</div>