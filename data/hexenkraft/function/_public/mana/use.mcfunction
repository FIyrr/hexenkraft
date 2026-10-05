tag @s remove hexenkraft.mana.used_successfully
execute at @s run function #hexenkraft:call_on_mana_use_attempt
execute if entity @s[gamemode=creative] run function hexenkraft:private/use/creative
execute if entity @s[gamemode=creative] run return 1 
$scoreboard players set @s hexenkraft.mana.amount_used $(amount)
$data modify storage hexenkraft mana.temp.amount set value $(amount)
execute if score @s hexenkraft.mana.amount_used <= @s hexenkraft.mana.amount run function hexenkraft:private/use/succeed with storage hexenkraft mana.temp
execute if entity @s[tag=hexenkraft.mana.used_successfully] run return 1
execute if score @s hexenkraft.mana.amount_used > @s hexenkraft.mana.amount run function hexenkraft:private/use/fail
return -1