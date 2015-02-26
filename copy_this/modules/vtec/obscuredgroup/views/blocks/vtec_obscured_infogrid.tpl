
<!--- VTEC ObsuredGroup Modul -->
[{*debug*}]

<div class="buttonBox">
     [{if $blShowToBasket }]
          [{oxhasrights ident="TOBASKET"}]
             [{* Gruppen ID aus Modul VTEC_ObscuredGroup auslesen *}]

                [{assign var="oKonfig" value=$oViewConf->getConfig()}]
                [{assign var="sGruppe" value=$oKonfig->getConfigParam('vtec_obscuredgroupid')}]
                [{assign var="sAVSGruppe" value=$oKonfig->getConfigParam('vtec_adultgroup_id')}]
   
             [{* Ende *}] 

             [{if $product->oxarticles__vtecobscured->value || $product->oxarticles__vtecadult->value}]
              [{if $oxcmp_user}]
                  [{if $oxcmp_user->inGroup($sGruppe) || $oxcmp_user->inGroup($sAVSGruppe)}]
                     
                       <button type="submit" class="submitButton largeButton">[{oxmultilang ident="TO_CART" }]</button>
                     
                  [{else}]    [{*wenn eingeloggt aber nicht in ObscuredGruppe*}]
                  
                     [{* Kein Inhalt nötig *}]
                     
                  [{/if}]
              [{else}]          
              
                    [{* Kein Inhalt nötig *}]
                  
             [{/if}]
          [{else}]
             [{if $blShowToBasket }]
                        [{oxhasrights ident="TOBASKET"}]
                            <button type="submit" class="submitButton largeButton">[{oxmultilang ident="TO_CART" }]</button>
                        [{/oxhasrights}]
             [{else}]
                        <a class="submitButton largeButton" href="[{ $_productLink }]" >[{ oxmultilang ident="MORE_INFO" }]</a>
             [{/if}]
             
          
          [{/if}]
          [{/oxhasrights}]
     [{/if}]
</div>