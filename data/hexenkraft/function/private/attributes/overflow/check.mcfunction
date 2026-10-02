execute if items entity @s armor.head *[minecraft:custom_data~{hexenkraft:{attributes:{overflow:1b,armor:1b}}}] store result score %head hexenkraft.temp run data get entity @s equipment.head.components."minecraft:custom_data".hexenkraft.attributes.overflow_amount

execute if items entity @s armor.chest *[minecraft:custom_data~{hexenkraft:{attributes:{overflow:1b,armor:1b}}}] store result score %chest hexenkraft.temp run data get entity @s equipment.chest.components."minecraft:custom_data".hexenkraft.attributes.overflow_amount

execute if items entity @s armor.legs *[minecraft:custom_data~{hexenkraft:{attributes:{overflow:1b,armor:1b}}}] store result score %legs hexenkraft.temp run data get entity @s equipment.legs.components."minecraft:custom_data".hexenkraft.attributes.overflow_amount

execute if items entity @s armor.feet *[minecraft:custom_data~{hexenkraft:{attributes:{overflow:1b,armor:1b}}}] store result score %feet hexenkraft.temp run data get entity @s equipment.feet.components."minecraft:custom_data".hexenkraft.attributes.overflow_amount

execute if items entity @s weapon.mainhand *[minecraft:custom_data~{hexenkraft:{attributes:{overflow:1b,mainhand:1b}}}] store result score %mainhand hexenkraft.temp run data get entity @s SelectedItem.components."minecraft:custom_data".hexenkraft.attributes.overflow_amount

execute if items entity @s weapon.offhand *[minecraft:custom_data~{hexenkraft:{attributes:{overflow:1b,offhand:1b}}}] store result score %offhand hexenkraft.temp run data get entity @s equipment.offhand.components."minecraft:custom_data".hexenkraft.attributes.overflow_amount

scoreboard players set @s hexenkraft.mana.overflow 0

scoreboard players operation @s hexenkraft.mana.overflow += %head hexenkraft.temp
scoreboard players operation @s hexenkraft.mana.overflow += %chest hexenkraft.temp
scoreboard players operation @s hexenkraft.mana.overflow += %legs hexenkraft.temp
scoreboard players operation @s hexenkraft.mana.overflow += %feet hexenkraft.temp
scoreboard players operation @s hexenkraft.mana.overflow += %mainhand hexenkraft.temp
scoreboard players operation @s hexenkraft.mana.overflow += %offhand hexenkraft.temp

scoreboard players reset %head hexenkraft.temp
scoreboard players reset %chest hexenkraft.temp
scoreboard players reset %legs hexenkraft.temp
scoreboard players reset %feet hexenkraft.temp
scoreboard players reset %mainhand hexenkraft.temp
scoreboard players reset %offhand hexenkraft.temp