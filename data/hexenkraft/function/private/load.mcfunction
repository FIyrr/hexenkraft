scoreboard objectives add hexenkraft.mana.amount dummy
scoreboard objectives add hexenkraft.mana.overflow dummy
scoreboard objectives add hexenkraft.mana.max dummy
scoreboard objectives add hexenkraft.mana.regen dummy
scoreboard objectives add hexenkraft.mana.percentage dummy
scoreboard objectives add hexenkraft.mana.amount_used dummy
scoreboard objectives add hexenkraft.mana.display_requirement dummy

scoreboard objectives add hexenkraft.mana.regen.modifier dummy
scoreboard objectives add hexenkraft.mana.overflow.modifier dummy

scoreboard objectives add hexenkraft.selected_slot dummy
scoreboard objectives add hexenkraft.selected_slot.old dummy

scoreboard objectives add hexenkraft.default dummy
scoreboard players set %mana.regen hexenkraft.default 5

scoreboard objectives add hexenkraft.const dummy
scoreboard players set %1000 hexenkraft.const 1000
scoreboard players set %100 hexenkraft.const 100
scoreboard players set %10 hexenkraft.const 10
scoreboard players set %-1 hexenkraft.const -1

scoreboard objectives add hexenkraft.temp dummy

scoreboard objectives add hexenkraft.util dummy
scoreboard players set %installed hexenkraft.util 777

scoreboard objectives add hexenkraft.id dummy
scoreboard players set %max hexenkraft.id 0

scoreboard objectives add hexenkraft.air air

scoreboard objectives add hexenkraft.settings.toggle_sounds trigger

data merge storage hexenkraft:atributes {}

function hexenkraft:private/1s

tellraw @a ["",{color:"yellow",text:"["},{color:"#CB81FF",text:"Hexenkraft Library"},{color:"yellow",text:"]"}," Reloaded!"]




