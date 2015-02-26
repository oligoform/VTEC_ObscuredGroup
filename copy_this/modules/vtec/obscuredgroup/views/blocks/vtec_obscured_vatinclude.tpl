
        [{oxifcontent ident="oxdeliveryinfo" object="oCont"}]
            [{assign var="tsBadge" value=""}]
            [{if $oView->getTrustedShopId()}]
                [{assign var="tsBadge" value="TsBadge"}]
            [{/if}]
            <div id="incVatMessage[{$tsBadge}]">
                [{if $oView->isVatIncluded()}]
                    * <span class="deliveryInfo">[{oxmultilang ident="PLUS_SHIPPING"}]<a href="[{$oCont->getLink()}]" rel="nofollow">[{oxmultilang ident="PLUS_SHIPPING2"}]</a></span>
                [{else}]
                    * <span class="deliveryInfo">[{oxmultilang ident="PLUS"}]<a href="[{$oCont->getLink()}]" rel="nofollow">[{oxmultilang ident="PLUS_SHIPPING2"}]</a></span>
                [{/if}]
            </div>
        [{/oxifcontent}]



