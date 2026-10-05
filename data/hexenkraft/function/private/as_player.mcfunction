## DISPLAY BROKEN / WIP ###

execute if score @s hexenkraft.mana.display_requirement matches 2.. if score @s hexenkraft.air matches 300 run function hexenkraft:private/display/use_mana/normal
execute if score @s hexenkraft.mana.display_requirement matches 2.. unless score @s hexenkraft.air matches 300 run function hexenkraft:private/display/use_mana/water


scoreboard players remove @s[scores={hexenkraft.mana.display_requirement=1..}] hexenkraft.mana.display_requirement 1
execute if score @s hexenkraft.mana.display_requirement matches 1 run data modify storage hexenkraft:mana indicator set value ""

execute unless entity @s[gamemode=creative] unless entity @s[gamemode=spectator] if score @s hexenkraft.air matches 300 run function hexenkraft:private/display/display_mana with storage hexenkraft:mana
execute unless entity @s[gamemode=creative] unless entity @s[gamemode=spectator] unless score @s hexenkraft.air matches 300 run function hexenkraft:private/display/display_mana_water with storage hexenkraft:mana


### PLACEHOLDER DISPLAY, MANA/MANA MAX, OVERFLOW, REGEN 
# title @s[tag=!hexenkraft.hide_display] actionbar ["",{color:"#E07BFF",score:{name:"@s",objective:"hexenkraft.mana.amount"}},"/",{color:"#E07BFF",text:"",extra:[{score:{name:"@s",objective:"hexenkraft.mana.max"}},"○"]}," ",{color:"#FFD48F",text:"",extra:[{score:{name:"@s",objective:"hexenkraft.mana.overflow"}},"◎ "]},{color:"#8FAFFF",text:"",extra:[{score:{name:"@s",objective:"hexenkraft.mana.regen"}},"⏏"]}]


scoreboard players operation @s hexenkraft.mana.max = %1000 hexenkraft.const
scoreboard players operation @s hexenkraft.mana.max += @s hexenkraft.mana.overflow

execute if score @s hexenkraft.mana.amount >= @s hexenkraft.mana.max run scoreboard players operation @s hexenkraft.mana.amount = @s hexenkraft.mana.max

function hexenkraft:private/attributes/main

function hexenkraft:private/attributes/non_item_modifiers/check/1


# precautions for incompetent developers
execute if score @s hexenkraft.mana.amount matches ..-1 run scoreboard players set @s hexenkraft.mana.amount 0
execute if score @s hexenkraft.mana.overflow matches ..-1 run scoreboard players set @s hexenkraft.mana.overflow 0 
execute if score @s hexenkraft.mana.overflow matches 1001.. run scoreboard players set @s hexenkraft.mana.overflow 1000

# detect item slot change

execute store result score @s hexenkraft.selected_slot run data get entity @s SelectedItemSlot

execute unless score @s[tag=!hexenkraft.checked_inventory] hexenkraft.selected_slot = @s hexenkraft.selected_slot.old run function hexenkraft:private/attributes/check

execute store result score @s hexenkraft.selected_slot.old run data get entity @s SelectedItemSlot

tag @s remove hexenkraft.checked_inventory