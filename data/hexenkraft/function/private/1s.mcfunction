
execute as @a[tag=!hexenkraft.exclude] if score @s hexenkraft.mana.amount < @s hexenkraft.mana.max run scoreboard players operation @s hexenkraft.mana.amount += @s hexenkraft.mana.regen

schedule function hexenkraft:private/1s 1s
