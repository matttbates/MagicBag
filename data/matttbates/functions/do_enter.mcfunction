
# save current location
execute store result score @s x run data get entity @s Pos[0]
execute store result score @s y run data get entity @s Pos[1]
execute store result score @s z run data get entity @s Pos[2]
execute if dimension minecraft:overworld run scoreboard players set @a dim 0
execute if dimension minecraft:the_nether run scoreboard players set @a dim -1
execute if dimension minecraft:the_end run scoreboard players set @a dim 1
#execute if entity @s[nbt={Dimension:"minecraft:overworld"}] run scoreboard players set @a dim 0
#execute if entity @s[nbt={Dimension:"minecraft:the_nether"}] run scoreboard players set @a dim -1
#execute if entity @s[nbt={Dimension:"minecraft:the_end"}] run scoreboard players set @a dim 1


# calculate user bag location if first time
execute if score @s bagCoords matches 0 run function matttbates:calculate_bag_coords

# setup the teleportation
scoreboard players operation @s tpX = @s bagCoords
scoreboard players set @s tpY 1
scoreboard players operation @s tpZ = @s bagCoords

# teleport to the new location
execute in matttbates:bag run tp 0 1 0
function scoretp:tp

schedule function matttbates:place_bag_check 2