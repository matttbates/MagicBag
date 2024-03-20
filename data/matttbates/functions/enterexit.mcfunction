say Enter/Exit
scoreboard players set @s fungus 0

execute if entity @s[nbt={Dimension:"minecraft:overworld"}] run function matttbates:enterbag
execute if entity @s[nbt={Dimension:"minecraft:the_nether"}] run function matttbates:enterbag
execute if entity @s[nbt={Dimension:"minecraft:the_end"}] run function matttbates:enterbag
execute if entity @s[nbt={Dimension:"matttbates:bag"}] run function matttbates:exitbag

scoreboard players set @s canTP 1