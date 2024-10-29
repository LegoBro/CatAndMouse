## Main Load

## Scoreboards
# Variables
scoreboard objectives add var dummy
    scoreboard players set #20 var 20
# Default Settings
scoreboard objectives add setting dummy
    scoreboard players set cheese_count setting 64
    scoreboard players set game_length setting 6000
    

# Scoreboard
scoreboard objectives add scoreboard dummy

# Player values
scoreboard objectives add rightClick minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add energy dummy
scoreboard objectives add posX dummy
scoreboard objectives add posY dummy
scoreboard objectives add posZ dummy


execute as @a[gamemode=creative] at @s run playsound minecraft:entity.cat.ambient master @s ~ ~ ~ 1 1
tellraw @a[gamemode=creative] "Reloaded Successfully"