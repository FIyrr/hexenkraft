$execute store result score %persistent hexenkraft.temp run data get storage hexenkraft:attributes $(player_id)[$(i)].persistent

execute if score %persistent hexenkraft.temp matches 0 run function hexenkraft:private/attributes/non_item_modifiers/apply/if_0 with storage hexenkraft:temp
$say i: $(i)

# i -> array, n -> modifier duration
data modify storage hexenkraft:temp i set compute default integer {type:"minecraft:sub",left:{type:"minecraft:storage",storage:"hexenkraft:temp",path:"i"},right:1}

execute unless data storage hexenkraft:temp {i:-1} run function hexenkraft:private/attributes/non_item_modifiers/remove_all/2 with storage hexenkraft:temp
