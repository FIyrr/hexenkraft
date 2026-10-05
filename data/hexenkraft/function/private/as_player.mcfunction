scoreboard players enable @s hexenkraft.settings.toggle_sounds

## DISPLAY BROKEN / WIP ###

execute unless entity @s[tag=hexenkraft.debug.bar] run function hexenkraft:private/display/main

### PLACEHOLDER DISPLAY, MANA/MANA MAX, OVERFLOW, REGEN 
execute if entity @s[tag=hexenkraft.debug.bar] run title @s[tag=!hexenkraft.hide_display] actionbar ["",{color:"#E07BFF",score:{name:"@s",objective:"hexenkraft.mana.amount"}},"/",{color:"#E07BFF",text:"",extra:[{score:{name:"@s",objective:"hexenkraft.mana.max"}},"○"]}," ",{color:"#FFD48F",text:"",extra:[{score:{name:"@s",objective:"hexenkraft.mana.overflow"}},"◎ "]},{color:"#8FAFFF",text:"",extra:[{score:{name:"@s",objective:"hexenkraft.mana.regen"}},"⏏"]}]


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

## triggers

execute if entity @s[scores={hexenkraft.settings.toggle_sounds=2..}] run scoreboard players set @s hexenkraft.settings.toggle_sounds 0