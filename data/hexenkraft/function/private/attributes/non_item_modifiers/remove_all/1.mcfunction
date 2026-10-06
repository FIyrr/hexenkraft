$execute store result storage hexenkraft:temp i int 1 run data get storage hexenkraft:attributes $(player_id)

execute if data storage hexenkraft:temp {i:0} run return fail
data modify storage hexenkraft:temp i set compute default integer {type:"minecraft:sub",left:{type:"minecraft:storage",storage:"hexenkraft:temp",path:"i"},right:1}

function hexenkraft:private/attributes/non_item_modifiers/remove_all/2 with storage hexenkraft:temp