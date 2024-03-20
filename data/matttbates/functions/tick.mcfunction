execute as @a at @s if score @s fungus matches 1.. run function matttbates:enterexit

# check if player is leaving bag
execute as @a at @s if dimension matttbates:bag if entity @s[y=5, dy=10] run function matttbates:do_exit