{literal}
<style type="text/css">.box {height: 100; width:300;}</style>
<script type="text/javascript">
function SubmitBoxes(N)
{
	$('#catformbox').val(N);
	$('#catform').submit();
}
</script>
{/literal}
<div class="content">
	<div class="tableContent2">
	<div class="titTable2">{#L_028#}</div>
		<a name="goto"></a>
		<form name="catform" id="catform" action="select_category.php#goto" method="post">
        <input type="hidden" name="csrftoken" value="{$_CSRFTOKEN}">
		<input type="hidden" name="action" value="process">
		<input type="hidden" name="box" value="" id="catformbox">
		<input type="hidden" name="cat_no" value="{$CAT_NO}">
		<table width="80%" border="0" cellpadding="4" class="content">
		<tr>
		  <td colspan="2" valign="top">
			{if $CAT_NO eq 2}{#L_2__0041#} {$COST}{else}{#L_2__0038#}{/if}
                        {*{$cat0}<br/>{$cat1}<br/>{$B_N}*}
		  </td>
		</tr>
{if $ERROR}
		<tr> 
		  <td colspan="2" class="errfont">
			{$ERROR}sadasdas
		  </td>
		</tr>
{/if}
		<tr> 
{foreach $boxes as $bx}
		  <td align="center" style="width:{$bx.PERCENT}%;">
			  <select name="cat{$bx.I}" class="box" size="15" onClick="SubmitBoxes({$bx.I})" style="width:230px;">
	{foreach $bx.cats as $bc}
				<option value="{$bc.K}" {$bc.SELECTED}>{$bc.CATNAME}</option>
	{/foreach}
			  </select>
		   </td>
        {if $bx.B_NOWLINE}
		</tr>
		<tr>
	{/if}
{/foreach}
		</tr>
		<tr>
		  <td colspan="3">&nbsp;{$test}</td>
		</tr>
		<tr>
		  <td align="center" colspan="3" >
{if $B_SHOWBUTTON}
	  <input type="submit" name="submitit" value="{#L_2__0047#}" class="button">
{/if}
		  </td>
		</tr>
		</table>
		</form>
{if $CAT_NO eq 2 && ! $B_SHOWBUTTON}
		<div class="padding" style="text-align:right;">
		<form name="catform" action="sell.php" method="post">
        	<input type="hidden" name="csrftoken" value="{$_CSRFTOKEN}">
			<input type="hidden" name="act" value="skipexcat">
			<input type="submit" name="submitit" value="{#L_805#}" class="button">
		</form>
		</div>
{/if}
	</div>
</div>