<div class="content">
	<div class="tableContent2">
		<div class="titTable2">
			{#_208#}
		</div>
		<div class="titTable3">
			<a href="{$SITEURL}item.php?id={$AUCT_ID}">{#_138#}</a> |
			<a href="{$SITEURL}profile.php?user_id={$ID}">{#_505#}</a>
		</div>
		<div class="table2">
			<table border="0" width="100%" cellspacing="0" cellpadding="4">
				<tr>
					<td colspan=5>
						{#_185#}{$USERNICK} ({$USERFB}) {$USERFBIMG}
						<br>
						<br>
					</td>
				</tr>
				<tr>
					<td width="5%" class="titTable2">&nbsp;</td>
					<td width="40%" class="titTable2">{#_503#}</td>
					<td width="15%" class="titTable2">{#_240#}</td>
					<td width="15%" class="titTable2">{#_259#}</td>
					<td width="15%" class="titTable2">{#_364#}</td>
				</tr>
{foreach $fbs as $fb}
				<tr {$fb.BGCOLOUR}>
					<td valign="top" width="5%">
						<img src="{$fb.IMG}" align="middle" alt="">
					</td>
					<td valign="top" width="40%">
						{$fb.FEEDBACK}
					</td>
					<td valign="top" width="15%">
						<a href="{$fb.USFLINK}">{$fb.USERNAME}</a> (<a href="{$SITEURL}feedback.php?id={$fb.USERID}&faction=show">{$fb.USFEED}</a>) {$fb.USICON}
					</td>
					<td valign="top" width="15%">
						{$fb.AUCTIONURL}
					</td>
					<td valign="top" width="15%">
						{$fb.FBDATE}
					</td>
				</tr>
{/foreach}
				<tr>
					<td align="right" width="5%">{$PAGENATION}</td>
				</tr>
			</table>
		</div>
	</div>
</div>