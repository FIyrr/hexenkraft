scoreboard players set @s hexenkraft.mana.display_requirement 25
execute unless score @s hexenkraft.settings.toggle_sounds matches 1 run playsound minecraft:entity.allay.hurt master @s ~ ~ ~ 0.7 0.67
execute at @s run function #hexenkraft:call_on_mana_use_fail
