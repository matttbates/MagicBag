say do_exit

# setup the teleportation function
scoreboard players operation @s tpX = @s x
scoreboard players operation @s tpY = @s y
scoreboard players operation @s tpZ = @s z

execute in minecraft:overworld if score @s dim matches 0 run tp 0 100 0
execute in minecraft:the_end if score @s dim matches 1 run tp 0 100 0
execute in minecraft:the_nether if score @s dim matches -1 run tp 0 100 0
function scoretp:tp