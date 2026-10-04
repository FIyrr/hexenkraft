scoreboard objectives remove hexenkraft.mana.amount
scoreboard objectives remove hexenkraft.mana.overflow
scoreboard objectives remove hexenkraft.mana.max
scoreboard objectives remove hexenkraft.mana.regen
scoreboard objectives remove hexenkraft.mana.percentage
scoreboard objectives remove hexenkraft.mana.amount_used
scoreboard objectives remove hexenkraft.mana.display_requirement
scoreboard objectives remove hexenkraft.selected_slot
scoreboard objectives remove hexenkraft.selected_slot.old
scoreboard objectives remove hexenkraft.default
scoreboard objectives remove hexenkraft.const
scoreboard objectives remove hexenkraft.temp
scoreboard objectives remove hexenkraft.util
scoreboard objectives remove hexenkraft.air

tellraw @a ["",{color:"yellow",text:"["},{color:"#CB81FF",text:"Hexenkraft Library"},{color:"yellow",text:"]"}," Uninstalled!"]

datapack disable "file/Hexenkraft Mana Library.zip"