
execute as @e[type=minecraft:item_display,sort=nearest,limit=1,distance=..10,tag=matttbates.magic_bag] at @s run loot spawn ~ ~ ~ loot matttbates:magic_bag
data remove entity @s attack
execute as @e[type=minecraft:item_display,sort=nearest,limit=1,distance=..10,tag=matttbates.magic_bag] at @s run fill ~ ~ ~ ~ ~ ~ minecraft:air 
#execute as @e[type=item,sort=nearest,limit=1,distance=..2,nbt={OnGround:0b,Age:0s,Item:{id:"minecraft:white_candle"}}] run kill @s
#execute as @e[type=minecraft:interaction,sort=nearest,limit=1,distance=..2,nbt={attack:{}}] run kill @s
execute as @e[type=minecraft:item_display,sort=nearest,limit=1,distance=..10,tag=matttbates.magic_bag] run kill @s
kill @s