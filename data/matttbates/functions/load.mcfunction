say Loading Adventurers Backpack

scoreboard objectives add fungus minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add canTP dummy

#used to store the location when entering the bag
scoreboard objectives add dim dummy
scoreboard objectives add x dummy
scoreboard objectives add y dummy
scoreboard objectives add z dummy

#used to calculate the location of the bag
scoreboard objectives add bagCoords dummy
scoreboard objectives add bagConst dummy

#used disposably to compare location
scoreboard objectives add varX dummy
scoreboard objectives add varY dummy
scoreboard objectives add varZ dummy

#setup
scoreboard players set @a canTP 1
scoreboard players set @a bagCoords 0
scoreboard players set @a bagConst 1000000

say Loaded