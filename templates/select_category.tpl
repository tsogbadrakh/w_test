{$CAT_NO}

{foreach $boxes as $bx}
            <td align="center" style="width:{$bx.PERCENT}%;">
                    <select name="cat" catid="{$bx.I}" class="box" size="15" style="width:230px;">
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