---------------------------------------------
-- Filamented Hold
-- Reduces the attack speed of enemies within a fan-shaped area originating from the caster.
---------------------------------------------
require("scripts/globals/monstertpmoves")
require("scripts/globals/settings")
require("scripts/globals/status")
---------------------------------------------

function onMobSkillCheck(target, mob, skill)
    return 0
end

function onMobWeaponSkill(target, mob, skill)
    local typeEffect = tpz.effect.SLOW

    skill:setMsg(MobStatusEffectMove(mob, target, typeEffect, 2500, 0, 120))

    return typeEffect
end
