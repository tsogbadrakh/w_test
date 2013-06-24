<td align="center" style="width:{$bx.PERCENT}%;">
        <select name="cat" catno="{$CAT_NO}" class="box" size="15" style="width:230px;">
{foreach $sbox as $bc}
              <option value="{$bc.K}" {$bc.SELECTED}>{$bc.CATNAME} eeerereer</option>
{/foreach}
        </select>
 </td>
</tr>
<tr>
    ********************
{foreach from=$CATL item=hoge}
    <tr>
    <td>{$hoge.cat_id}</td>
    </tr>
{/foreach}