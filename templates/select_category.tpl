<td align="center" style="width:{$PERCENT}%;">
    <select name="cat" catno="{$CAT_NO}" class="box" size="15" style="width:230px;">
    {foreach $sbox as $bc}<option value="{$bc.K}" {$bc.SELECTED}>{$bc.CATNAME}</option>{/foreach}
    </select>
</td>
</tr><tr>