-----------------------------------
-- Area: Aht Urhgan Whitegate
--  NPC: Ahaadah
-- !pos -70 -6 105 50
-----------------------------------
package.loaded["scripts/zones/Aht_Urhgan_Whitegate/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Aht_Urhgan_Whitegate/TextIDs");
-----------------------------------

function onTrade(player,npc,trade)
end;

function onTrigger(player,npc)
    player:startEvent(870); -- or 1
end;

function onEventUpdate(player,csid,option)
end;

function onEventFinish(player,csid,option)
end;