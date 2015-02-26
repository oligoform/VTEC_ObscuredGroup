<!--- VTEC ObsuredGroup Modul -->
[{*debug*}]


[{* Moduleinstellung zum Anzeigen auslesen *}]

    [{assign var="oKonfig" value=$oViewConf->getConfig()}]
    
[{* Ende *}]

 [{if $oKonfig->getConfigParam('vtec_obscured_viewoxid')}]

  <tr>
    <td class="edittext" width="120">[{oxmultilang ident="VTEC_OBSCURED_BENUTZERGRUPPEN_ID"}]</td>
    <td class="edittext">[{ $edit->oxgroups__oxid }]</td>
  </tr>
 [{/if}]


[{$smarty.block.parent}]


