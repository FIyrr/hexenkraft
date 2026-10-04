tag @s add hexenkraft.mana.used_successfully
$execute if score @s hexenkraft.mana.amount_used <= @s hexenkraft.mana.amount run scoreboard players remove @s hexenkraft.mana.amount $(amount)
execute at @s run function #hexenkraft:call_on_mana_use_success
