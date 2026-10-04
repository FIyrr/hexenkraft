$data merge storage hexenkraft:temp {type:$(type),duration:$(duration),amount:$(amount),id:"$(id)",player_id:67}
# haha 67
execute store result storage hexenkraft:temp player_id int 1 run scoreboard players get @s hexenkraft.id
function hexenkraft:private/attributes/non_item_modifiers/create with storage hexenkraft:temp
