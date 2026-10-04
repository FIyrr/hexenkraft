$execute unless data storage hexenkraft:attributes $(player_id)[{id:"$(id)"}] run return fail

$data modify storage hexenkraft:temp modifier set from storage hexenkraft:attributes $(player_id)[{id:"$(id)"}]
$data merge storage hexenkraft:temp {modifier:{player_id:$(player_id)}}

function hexenkraft:private/attributes/non_item_modifiers/remove_id/2 with storage hexenkraft:temp modifier