{if $B_FEATURED_ITEMS}
	<table width="98%" border="0" cellspacing="1" cellpadding="4">
		<tr>
			<th width="9%" align="center" height="5">
				{#L_167#}
			</th>
			<th width="49%" height="5" align="center">
				{#L_168#}
			</th>
			<th width="14%" height="5" align="center">
				{#L_169#}
			</th>
			<th width="14%" height="5" align="center">
				{#L_170#}
			</th>
			<th width="14%" align="center" height="5">
				{#L_171#}
			</th>
		</tr>
    {foreach $featured_items as $fitem}
		<tr align="center" {$fitem.ROWCOLOUR}{if $fitem.B_BOLD} style="font-weight: bold;"{/if}>
			<td align="center">
				{$fitem.IMAGE}
			</td>
			<td align="left">
                                {$fitem.TITLE} {$fitem.BUY_NOW}
				{if $B_SUBTITLE && $fitem.SUBTITLE ne ''}<p class="smallspan">{$fitem.SUBTITLE}</p>{/if}
			</td>
			<td align="right">
				{$fitem.BIDFORM}
			</td>
			<td align="center">
				{$fitem.NUMBIDS}
			</td>
			<td align="center">
				{$fitem.TIMELEFT}
			</td>
		</tr>
    {/foreach}
	</table>
    <br class="spacer">
{/if}

	<table width="98%" border="0" cellspacing="1" cellpadding="4">
		<tr>
			<th width="9%" align="center" height="5">
				{#L_167#}
			</th>
			<th width="49%" height="5" align="center">
				{#L_168#}
			</th>
			<th width="14%" height="5" align="center">
				{#L_169#}
			</th>
			<th width="14%" height="5" align="center">
				{#L_170#}
			</th>
			<th width="14%" align="center" height="5">
				{#L_171#}
			</th>
		</tr>
                {foreach $items as $item}
                    <tr align="center" {$itm.ROWCOLOUR}{if $itm.B_BOLD} style="font-weight: bold;"{/if}>
                            <td align="center">
                                {$itm.IMAGE}
                            </td>
                            <td align="left">
                                {$itm.TITLE} {$itm.BUY_NOW}
                                {if $B_SUBTITLE && $itm.SUBTITLE ne ''}<p class="smallspan">{$itm.SUBTITLE}</p>{/if}
                            </td>
                            <td align="right">
                                {$itm.BIDFORM}
                            </td>
                            <td align="center">
                                {$itm.NUMBIDS}
                            </td>
                            <td align="center">
                                {$itm.TIMELEFT}
                            </td>
                    </tr>
                {/foreach}
		<tr align="center">
			<td colspan="5">{$NUM_AUCTIONS}</td>
		</tr>
	</table>
	<table width="100%" cellpadding="0" cellspacing="0" border="0">
		<tr>
			<td align="center">
				{#L_5117#}&nbsp;{$PAGE}&nbsp;{#L_5118#}&nbsp;{$PAGES}
				<br>
				{$PREV}
                                {foreach $pages as $pg}
                                    {$pg.PAGE}&nbsp;&nbsp;
                                {/foreach}
				{$NEXT}
			</td>
		</tr>
	</table>