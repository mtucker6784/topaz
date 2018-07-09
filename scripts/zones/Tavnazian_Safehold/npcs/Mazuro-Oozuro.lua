-----------------------------------
-- Area: Tavnazian Safehold
--  NPC: Mazuro-Oozuro
-- Standard Merchant NPC
-----------------------------------
require("scripts/globals/shop");
package.loaded["scripts/zones/Tavnazian_Safehold/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Tavnazian_Safehold/TextIDs");
-----------------------------------

function onTrade(player,npc,trade)
end;

function onTrigger(player,npc)

    player:showText(npc,MAZUROOOZURO_SHOP_DIALOG);

    local stock =
    {
        17005,108,        -- Lufaise Fly
     17383,2640,        -- Clothespole
     688,200,        -- Arrowwood Log
     690,7800,        -- Elm Log
     2871,10000}        -- Safehold Waystone

    dsp.shop.general(player, stock);
end;

function onEventUpdate(player,csid,option)
end;

function onEventFinish(player,csid,option)
end;

