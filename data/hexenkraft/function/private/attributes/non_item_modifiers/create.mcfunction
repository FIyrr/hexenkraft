scoreboard players set %positive hexenkraft.temp 0

$execute if data storage hexenkraft:attributes $(player_id)[{id:"$(id)"}] run function hexenkraft:_public/attribute/remove_modifier {id:"$(id)"}
$data modify storage hexenkraft:attributes $(player_id) append value {type:$(type),id:"$(id)",duration:$(duration),amount:$(amount)}

$tellraw @a[tag=hexenkraft.debug] ["",{color:"yellow",text:"["},{color:"red",text:"HEXENKRAFT DEBUG"},{color:"yellow",text:"] "},{color:"white",text:"Applied attribute modifier "},{color:"yellow",text:"\"$(id)\""},{"text":" to player "}, {color:"#ffb66e",selector:"@s"},{"text":": "},{color:"#6EFFEC",nbt:"$(player_id)[{id:\"$(id)\"}]",storage:"hexenkraft:attributes"}]

$scoreboard players set %amount hexenkraft.temp $(amount)
execute if score %amount hexenkraft.temp matches 0.. run scoreboard players set %positive hexenkraft.temp 1
execute unless score %positive hexenkraft.temp matches 1 run scoreboard players operation %amount hexenkraft.temp *= %-1 hexenkraft.const

execute if data storage hexenkraft:temp {type:"regen"} if score %positive hexenkraft.temp matches 1 run return run scoreboard players operation @s hexenkraft.mana.regen.modifier += %amount hexenkraft.temp
execute if data storage hexenkraft:temp {type:"overflow"} if score %positive hexenkraft.temp matches 1 run return run scoreboard players operation @s hexenkraft.mana.overflow.modifier += %amount hexenkraft.temp

execute if data storage hexenkraft:temp {type:"regen"} run return run scoreboard players operation @s hexenkraft.mana.regen.modifier -= %amount hexenkraft.temp
execute if data storage hexenkraft:temp {type:"overflow"} run return run scoreboard players operation @s hexenkraft.mana.overflow.modifier -= %amount hexenkraft.temp