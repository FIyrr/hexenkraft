execute if score @s hexenkraft.mana.display_requirement matches 2.. run function hexenkraft:private/display/need_mana/main


scoreboard players remove @s[scores={hexenkraft.mana.display_requirement=1..}] hexenkraft.mana.display_requirement 1
execute if score @s hexenkraft.mana.display_requirement matches 1 run data modify storage hexenkraft:mana indicator set value ""

execute unless entity @s[gamemode=creative] unless entity @s[gamemode=spectator] if score @s hexenkraft.air matches 300 run function hexenkraft:private/display/display_mana with storage hexenkraft:mana
execute unless entity @s[gamemode=creative] unless entity @s[gamemode=spectator] unless score @s hexenkraft.air matches 300 run function hexenkraft:private/display/display_mana_water with storage hexenkraft:mana
