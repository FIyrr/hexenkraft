execute if entity @s[tag=hexenkraft.debug] run tellraw @s ["",{color:"yellow",text:"["},{color:"red",text:"HEXENKRAFT DEBUG"},{color:"yellow",text:"] "},{color:"white",text:"Disabled debug messages! "}]
execute if entity @s[tag=hexenkraft.debug] run return run tag @s remove hexenkraft.debug
tag @s add hexenkraft.debug
tellraw @s ["",{color:"yellow",text:"["},{color:"red",text:"HEXENKRAFT DEBUG"},{color:"yellow",text:"] "},{color:"white",text:"Enabled debug messages! "}]
