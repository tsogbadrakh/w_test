{ldelim}"OPTION": {$SETTING|json_encode}{if isset($sbox)},
"shtml": "<td><select name=cat catno={$SETTING.CAT_NO} class=box size=15 style=width:230px;>{foreach $sbox as $bc}<option value={$bc.value} {$bc.selected}>{$bc.catname}</option>{/foreach}</select></td>"{/if}
{rdelim}{*<td>    
        <select name="cat" catno="{$CAT_NO}" class="box" size="15" style="width:230px;">
        {foreach $sbox as $bc}
            <option value="{$bc.value}" {$bc.selected}>{$bc.catname}</option>
        {/foreach}
        </select>
</td>*}