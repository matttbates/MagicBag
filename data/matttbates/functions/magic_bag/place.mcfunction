#provide hitbox for the custom block
setblock ~ ~ ~ minecraft:white_candle[candles=1] keep
#display the custom block
summon item_display ~ ~ ~ {Tags:["matttbates.magic_bag","matttbates.custom_block","matttbates.just_placed"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[1.0f,1.0f,1.0f],translation:[0f,0.47f,0f]},item:{id:"minecraft:item_frame",Count:1b,components:{"minecraft:custom_model_data":3110001}}}
#rotate the custom block to face the player
execute as @e[type=minecraft:item_display,distance=..5,limit=1,tag=matttbates.just_placed] at @s run teleport @s ~ ~ ~ facing entity @p
execute as @e[type=minecraft:item_display,distance=..5,limit=1,tag=matttbates.just_placed] at @s facing entity @p eyes rotated ~ 0 positioned ^ ^ ^0.7071 align xyz positioned ~.5 ~ ~.5 facing entity @s eyes positioned as @s run tp @s ~ ~ ~ ~180 ~
tag @e[type=minecraft:item_display,distance=..5,limit=1,tag=matttbates.just_placed] remove matttbates.just_placed
#add hitbox to the custom block
summon minecraft:interaction ~ ~ ~ {width:0.7,height:0.6}