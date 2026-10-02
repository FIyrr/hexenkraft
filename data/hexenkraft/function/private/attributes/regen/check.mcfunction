execute if items entity @s armor.head *[minecraft:custom_data~{hexenkraft:{attributes:{regen:1b,armor:1b}}}] store result score %head hexenkraft.temp run data get entity @s equipment.head.components."minecraft:custom_data".hexenkraft.attributes.regen_amount

execute if items entity @s armor.chest *[minecraft:custom_data~{hexenkraft:{attributes:{regen:1b,armor:1b}}}] store result score %chest hexenkraft.temp run data get entity @s equipment.chest.components."minecraft:custom_data".hexenkraft.attributes.regen_amount

execute if items entity @s armor.legs *[minecraft:custom_data~{hexenkraft:{attributes:{regen:1b,armor:1b}}}] store result score %legs hexenkraft.temp run data get entity @s equipment.legs.components."minecraft:custom_data".hexenkraft.attributes.regen_amount

execute if items entity @s armor.feet *[minecraft:custom_data~{hexenkraft:{attributes:{regen:1b,armor:1b}}}] store result score %feet hexenkraft.temp run data get entity @s equipment.feet.components."minecraft:custom_data".hexenkraft.attributes.regen_amount

execute if items entity @s weapon.mainhand *[minecraft:custom_data~{hexenkraft:{attributes:{regen:1b,mainhand:1b}}}] store result score %mainhand hexenkraft.temp run data get entity @s SelectedItem.components."minecraft:custom_data".hexenkraft.attributes.regen_amount

execute if items entity @s weapon.offhand *[minecraft:custom_data~{hexenkraft:{attributes:{regen:1b,offhand:1b}}}] store result score %offhand hexenkraft.temp run data get entity @s SelectedItem.components."minecraft:custom_data".hexenkraft.attributes.regen_amount

scoreboard players operation @s hexenkraft.mana.regen = %mana.regen hexenkraft.default
scoreboard players operation @s hexenkraft.mana.regen += %head hexenkraft.temp
scoreboard players operation @s hexenkraft.mana.regen += %chest hexenkraft.temp
scoreboard players operation @s hexenkraft.mana.regen += %legs hexenkraft.temp
scoreboard players operation @s hexenkraft.mana.regen += %feet hexenkraft.temp
scoreboard players operation @s hexenkraft.mana.regen += %mainhand hexenkraft.temp
scoreboard players operation @s hexenkraft.mana.regen += %offhand hexenkraft.temp

scoreboard players reset %head hexenkraft.temp
scoreboard players reset %chest hexenkraft.temp
scoreboard players reset %legs hexenkraft.temp
scoreboard players reset %feet hexenkraft.temp
scoreboard players reset %mainhand hexenkraft.temp
scoreboard players reset %offhand hexenkraft.temp