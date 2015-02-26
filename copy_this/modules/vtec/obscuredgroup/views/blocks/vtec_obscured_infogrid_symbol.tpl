
[{$smarty.block.parent}]

<!--- VTEC ObsuredGroup Modul -->
[{*debug*}]

[{* Gruppen ID aus Modul VTEC_ObscuredGroup auslesen *}]

                [{assign var="oKonfig" value=$oViewConf->getConfig()}]
                [{assign var="sGruppe" value=$oKonfig->getConfigParam('vtec_obscuredgroupid')}]
                [{assign var="sAVSGruppe" value=$oKonfig->getConfigParam('vtec_adultgroup_id')}]
   
[{* Ende *}] 

[{if $product->oxarticles__vtecobscured->value || $product->oxarticles__vtecadult->value}]
              [{if $oxcmp_user}]
                  [{if $oxcmp_user->inGroup($sGruppe) || $oxcmp_user->inGroup($sAVSGruppe)}]
                     
                      [{* ohne Inhalt *}]]
                     
                  [{else}]    [{*wenn eingeloggt aber nicht in ObscuredGruppe*}]
                  
                     [{if $product->oxarticles__vtecadult->value}]
                        <img src="[{ $oViewConf->getModuleUrl('vtec/obscuredgroup','out/img/adult_verification.jpg') }]" width="32%" height="32%" title="[{oxmultilang ident="VTEC_OBSCURED_ADULTGROUP"}]"/>
                     [{else}]   
                        <img src="[{ $oViewConf->getModuleUrl('vtec/obscuredgroup','out/img/nicht_in_gruppe.jpg') }] " width="32%" height="32%" title="[{oxmultilang ident="VTEC_OBSCURED_NICHTINGRUPPE"}]"/>   [{* Bild anstatt Button *}]
                     [{/if}]   
                     
                  [{/if}]
              [{else}]          
              
                  [{if $product->oxarticles__vtecadult->value}]
                    <img src="[{ $oViewConf->getModuleUrl('vtec/obscuredgroup','out/img/adult_verification.jpg') }]" width="32%" height="32%" title="[{oxmultilang ident="VTEC_OBSCURED_ADULTGROUP"}]"/>
                  [{else}] 
                    <img src="[{ $oViewConf->getModuleUrl('vtec/obscuredgroup','out/img/kein_postversand.jpg') }]" width="32%" height="32%" title="[{oxmultilang ident="VTEC_OBSCURED_NICHTKAUFBAR"}]"/>   [{* Bild anstatt Button *}]
                  [{/if}]  
              [{/if}]
[{/if}]              

