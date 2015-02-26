[{$smarty.block.parent}]

<tr>
  <td class="edittext" width="120">[{oxmultilang ident="VTEC_ADMIN_OBSCUREDGROUP"}]</td>
  <td class="edittext">
    <input type="hidden" name="editval[oxarticles__vtecobscured]" value="0">
    <input class="edittext" type="checkbox" name="editval[oxarticles__vtecobscured]" value='1' [{if $edit->oxarticles__vtecobscured->value == 1}]checked[{/if}]>
    [{ oxinputhelp ident="HELP_VTEC_OBSCUREDGROUP" }]
  </td>
</tr>
<tr>
  <td class="edittext" width="120">[{oxmultilang ident="VTEC_ADMIN_AVSGROUP"}]</td>
  <td class="edittext">
    <input type="hidden" name="editval[oxarticles__vtecadult]" value="0">
    <input class="edittext" type="checkbox" name="editval[oxarticles__vtecadult]" value='1' [{if $edit->oxarticles__vtecadult->value == 1}]checked[{/if}]>
    [{ oxinputhelp ident="HELP_VTEC_AVSGROUP" }]
  </td>
</tr>