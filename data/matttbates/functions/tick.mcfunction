execute as @a at @s if score @s fungus matches 1.. run function matttbates:enterexit

# check if player is leaving bag
execute as @a at @s if dimension matttbates:bag if entity @s[y=7, dy=10] run function matttbates:do_exit

# check if player interacts with bag
execute as @e[type=minecraft:interaction] on target run function matttbates:interaction/as_interactions
execute as @e[type=minecraft:interaction] on attacker run function matttbates:interaction/as_interactions

# check bag broken
#execute as @e[type=minecraft:item_display,tag=matttbates.custom_block] at @s run function matttbates:block/as_blocks
