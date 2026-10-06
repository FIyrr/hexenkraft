execute if score @s hexenkraft.mana.amount matches ..999 unless score @s hexenkraft.air matches -20..299 run return run function hexenkraft:private/display/need_mana/normal
execute if score @s hexenkraft.mana.amount matches ..999 unless score @s hexenkraft.air matches 300 run return run function hexenkraft:private/display/need_mana/water

execute if score @s hexenkraft.air matches 300 run return run function hexenkraft:private/display/need_mana/overflow/normal
function hexenkraft:private/display/need_mana/overflow/water
