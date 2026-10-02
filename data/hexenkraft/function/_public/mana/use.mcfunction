$scoreboard players set @s hexenkraft.mana.amount_used $(amount)
execute if score @s hexenkraft.mana.amount_used > @s hexenkraft.mana.amount run scoreboard players set @s hexenkraft.mana.display_requirement 80
execute if score @s hexenkraft.mana.amount_used > @s hexenkraft.mana.amount run playsound minecraft:entity.allay.hurt master @s ~ ~ ~ 0.7 0.67
execute if score @s hexenkraft.mana.amount_used > @s hexenkraft.mana.amount run return -1
$execute if score @s hexenkraft.mana.amount_used <= @s hexenkraft.mana.amount run scoreboard players remove @s hexenkraft.mana.amount $(amount)
return 1