
$data modify storage hexenkraft:temp modifier set from storage hexenkraft:attributes $(player_id)[$(n)]
$data remove storage hexenkraft:attributes $(player_id)[$(n)]
function hexenkraft:private/attributes/non_item_modifiers/apply/remove with storage hexenkraft:temp modifier