
$data modify storage hexenkraft:temp modifier set from storage hexenkraft:attributes $(player_id)[$(i)]
$data remove storage hexenkraft:attributes $(player_id)[$(i)]
function hexenkraft:private/attributes/non_item_modifiers/apply/remove with storage hexenkraft:temp modifier