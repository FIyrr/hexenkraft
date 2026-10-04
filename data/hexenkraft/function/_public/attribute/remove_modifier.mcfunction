execute store result storage hexenkraft:temp player_id int 1 run scoreboard players get @s hexenkraft.id
$data merge storage hexenkraft:temp {id:"$(id)"}
function hexenkraft:private/attributes/non_item_modifiers/remove_id/1 with storage hexenkraft:temp
