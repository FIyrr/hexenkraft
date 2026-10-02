advancement revoke @s only hexenkraft:update_inventory

scoreboard players set @s hexenkraft.mana.overflow 0
scoreboard players set @s hexenkraft.mana.regen 0

function hexenkraft:private/attributes/overflow/check
function hexenkraft:private/attributes/regen/check

tag @s add hexenkraft.checked_inventory
