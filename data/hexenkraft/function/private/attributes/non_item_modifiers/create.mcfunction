$execute if data storage hexenkraft:attributes $(player_id)[{id:"$(id)"}] run function hexenkraft:_public/attribute/remove_modifier {id:"$(id)"}
$data modify storage hexenkraft:attributes $(player_id) append value {type:$(type),id:"$(id)",duration:$(duration),amount:$(amount)}

$execute if data storage hexenkraft:temp {type:"regen"} run scoreboard players add @s hexenkraft.mana.regen.modifier $(amount)
$execute if data storage hexenkraft:temp {type:"overflow"} run scoreboard players add @s hexenkraft.mana.overflow.modifier $(amount)