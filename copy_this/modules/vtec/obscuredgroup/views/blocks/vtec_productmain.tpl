
<!--- VTEC ObsuredGroup Modul -->
[{*debug*}]



[{oxhasrights ident="TOBASKET"}]

[{* Gruppen ID aus Modul VTEC_ObscuredGroup auslesen *}]

   [{assign var="oKonfig" value=$oViewConf->getConfig()}]
   [{assign var="sGruppe" value=$oKonfig->getConfigParam('vtec_obscuredgroupid')}]
   [{assign var="sAVSGruppe" value=$oKonfig->getConfigParam('vtec_adultgroup_id')}]
   
   
[{* Ende *}] 

[{if $oDetailsProduct->oxarticles__vtecobscured->value || $oDetailsProduct->oxarticles__vtecadult->value}]
      [{if $oxcmp_user}]
           [{if $oxcmp_user->inGroup($sGruppe) || $oxcmp_user->inGroup($sAVSGruppe) }]
                 [{if !$oDetailsProduct->isNotBuyable()}]
                   <input id="amountToBasket" type="text" name="am" value="1" size="3" autocomplete="off" class="textbox">
                   <button id="toBasket" type="submit" [{if !$blCanBuy}]disabled="disabled"[{/if}] class="submitButton largeButton">[{oxmultilang ident="TO_CART"}]</button>
                 [{/if}]
           [{else}]    [{*wenn eingeloggt aber nicht in ObscuredGruppe*}]
           
                 [{if $oDetailsProduct->oxarticles__vtecadult->value}]
                    <img src="[{ $oViewConf->getModuleUrl('vtec/obscuredgroup','out/img/adult_verification.jpg') }]" width="18%" height="18%" title="[{oxmultilang ident="VTEC_OBSCURED_ADULTGROUP"}]"/>
                 [{else}]   
                    <img src="[{ $oViewConf->getModuleUrl('vtec/obscuredgroup','out/img/nicht_in_gruppe.jpg') }] " width="18%" height="18%" title="[{oxmultilang ident="VTEC_OBSCURED_NICHTINGRUPPE"}]"/>   [{* Bild anstatt Button *}]
                 [{/if}]  
                
           [{/if}]
       [{else}]  
                 [{if $oDetailsProduct->oxarticles__vtecadult->value}]
                    <img src="[{ $oViewConf->getModuleUrl('vtec/obscuredgroup','out/img/adult_verification.jpg') }]" width="18%" height="18%" title="[{oxmultilang ident="VTEC_OBSCURED_ADULTGROUP"}]"/>
                 [{else}] 
                    <img src="[{ $oViewConf->getModuleUrl('vtec/obscuredgroup','out/img/kein_postversand.jpg') }]" width="18%" height="18%" title="[{oxmultilang ident="VTEC_OBSCURED_NICHTKAUFBAR"}]"/>   [{* Bild anstatt Button *}]
                 [{/if}]  
       [{/if}]
[{else}]
    [{if !$oDetailsProduct->isNotBuyable()}]
         <input id="amountToBasket" type="text" name="am" value="1" size="3" autocomplete="off" class="textbox">
         <button id="toBasket" type="submit" [{if !$blCanBuy}]disabled="disabled"[{/if}] class="submitButton largeButton">[{oxmultilang ident="TO_CART"}]</button>
    [{/if}]
         
[{/if}]


[{/oxhasrights}]

