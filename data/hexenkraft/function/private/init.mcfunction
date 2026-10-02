scoreboard players set @s hexenkraft.mana.amount 1000
scoreboard players set @s hexenkraft.mana.max 1000
scoreboard players set @s hexenkraft.mana.overflow 0

scoreboard players operation @s hexenkraft.mana.regen = %mana_regen hexenkraft.default 
scoreboard players operation @s hexenkraft.mana.regen = %mana.regen hexenkraft.default

say initialised player