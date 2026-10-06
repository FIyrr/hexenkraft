scoreboard players set @s hexenkraft.death 0
scoreboard players set @s hexenkraft.mana.amount 1000
execute store result storage hexenkraft:temp player_id int 1 run scoreboard players get @s hexenkraft.id
function hexenkraft:private/attributes/non_item_modifiers/remove_all/1 with storage hexenkraft:temp

tellraw @a[tag=hexenkraft.debug] ["",{color:"yellow",text:"["},{color:"red",text:"HEXENKRAFT DEBUG"},{color:"yellow",text:"] "},{color:"#ffb66e",selector:"@s"},{"text":" died. Removed all attributes & set mana amount to 1000. "}]
