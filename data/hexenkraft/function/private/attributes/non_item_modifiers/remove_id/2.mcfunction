$execute if data storage hexenkraft:temp {modifier:{type:"regen"}} run scoreboard players remove @s hexenkraft.mana.regen.modifier $(amount)

$execute if data storage hexenkraft:temp {modifier:{type:"overflow"}} run scoreboard players remove @s hexenkraft.mana.overflow.modifier $(amount)

$data remove storage hexenkraft:attributes $(player_id)[{id:"$(id)"}]
