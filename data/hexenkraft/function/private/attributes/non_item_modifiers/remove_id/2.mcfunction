$data remove storage hexenkraft:attributes $(player_id)[{id:"$(id)"}]

tellraw @a[tag=hexenkraft.debug] ["",{color:"yellow",text:"["},{color:"red",text:"HEXENKRAFT DEBUG"},{color:"yellow",text:"] "},{color:"white",text:"Manually removed attribute modifier "},{color:"yellow",nbt:"modifier.id",storage:"hexenkraft:temp"},{"text":" from player "}, {color:"#ffb66e",selector:"@s"},{color:"white",text:" (Type: "},{color:"#6EFFEC",nbt:"modifier.type",storage:"hexenkraft:temp"},", Amount: ",{color:"#6EFFEC",nbt:"modifier.amount",storage:"hexenkraft:temp"},{color:"white",text:")"}]

$scoreboard players set %amount hexenkraft.temp $(amount)
execute if score %amount hexenkraft.temp matches 0.. run scoreboard players set %positive hexenkraft.temp 1
execute unless score %positive hexenkraft.temp matches 1 run scoreboard players operation %amount hexenkraft.temp *= %-1 hexenkraft.const

execute if data storage hexenkraft:temp {type:"regen"} if score %positive hexenkraft.temp matches 1 run return run scoreboard players operation @s hexenkraft.mana.regen.modifier -= %amount hexenkraft.temp
execute if data storage hexenkraft:temp {type:"overflow"} if score %positive hexenkraft.temp matches 1 run return run scoreboard players operation @s hexenkraft.mana.overflow.modifier -= %amount hexenkraft.temp

execute if data storage hexenkraft:temp {type:"regen"} run return run scoreboard players operation @s hexenkraft.mana.regen.modifier += %amount hexenkraft.temp
execute if data storage hexenkraft:temp {type:"overflow"} run return run scoreboard players operation @s hexenkraft.mana.overflow.modifier += %amount hexenkraft.temp
