-----------------------------------
-- Area: Southern San d'Oria
--  NPC: Miogique
-- Standard Merchant NPC
-----------------------------------
package.loaded["scripts/zones/Southern_San_dOria/TextIDs"] = nil;
-----------------------------------
require("scripts/globals/settings");
require("scripts/globals/shop");
require("scripts/globals/quests");
require("scripts/zones/Southern_San_dOria/TextIDs");
-----------------------------------

function onTrade(player,npc,trade)
    -- "Flyers for Regine" conditional script
    local FlyerForRegine = player:getQuestStatus(SANDORIA,FLYERS_FOR_REGINE);

    if (FlyerForRegine == 1) then
        local count = trade:getItemCount();
        local MagicFlyer = trade:hasItemQty(532,1);
        if (MagicFlyer == true and count == 1) then
            player:messageSpecial(FLYER_REFUSED);
        end
    end
end;

function onTrigger(player,npc)

    player:showText(npc,MIOGIQUE_SHOP_DIALOG);

    local stock = {12552,14256,1,    -- Chainmail
             12680,7783,1,        -- Chain Mittens
             12672,23846,1,    -- Gauntlets
             12424,9439,1,        -- Iron Mask

             12442,13179,2,    -- Studded Bandana
             12698,11012,2,    -- Studded Gloves
             12570,20976,2,    -- Studded Vest

             12449,1504,3,        -- Brass Cap
             12577,2286,3,        -- Brass Harness
             12705,1255,3,        -- Brass Mittens
             12448,154,3,        -- Bronze Cap
             12576,576,3,        -- Bronze Harness
             12704,128,3,        -- Bronze Mittens
             12440,396,3,        -- Leather Bandana
             12696,331,3,        -- Leather Gloves
             12568,618,3}        -- Leather Vest

    dsp.shop.nation(player, stock, dsp.nation.SANDORIA);

end;

function onEventUpdate(player,csid,option)
end;

function onEventFinish(player,csid,option)
end;
