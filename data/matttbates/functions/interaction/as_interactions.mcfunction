execute at @p if entity @e[type=minecraft:interaction,distance=..2,nbt={"interaction":{}}] if entity @e[type=minecraft:item_display,tag=matttbates.magic_bag,distance=..2] run function matttbates:enter
execute at @p as @e[type=minecraft:interaction,distance=..5,nbt={"attack":{}}] if entity @e[type=minecraft:item_display,tag=matttbates.magic_bag,distance=..5] run function matttbates:magic_bag/break
#execute as @e[type=minecraft:interaction,nbt={"attack":{}}] at @p if entity @e[type=minecraft:item_display,tag=matttbates.magic_bag,distance=..5] run say break!
#say as_interaction