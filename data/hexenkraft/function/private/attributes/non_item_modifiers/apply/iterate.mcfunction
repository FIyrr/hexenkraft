$execute store result score %duration hexenkraft.temp run data get storage hexenkraft:attributes $(player_id)[$(i)].duration

execute if score %duration hexenkraft.temp matches 0 run function hexenkraft:private/attributes/non_item_modifiers/apply/if_0 with storage hexenkraft:temp

$execute unless score %duration hexenkraft.temp matches -1..0 run data modify storage hexenkraft:attributes $(player_id)[$(i)].duration set compute default integer {type:"minecraft:sub",left:{type:"minecraft:storage",storage:"hexenkraft:attributes",path:"$(player_id)[$(i)].duration"},right:1}

# i -> array, n -> modifier duration
data modify storage hexenkraft:temp i set compute default integer {type:"minecraft:sub",left:{type:"minecraft:storage",storage:"hexenkraft:temp",path:"i"},right:1}

execute unless data storage hexenkraft:temp {i:-1} run function hexenkraft:private/attributes/non_item_modifiers/apply/iterate with storage hexenkraft:temp
