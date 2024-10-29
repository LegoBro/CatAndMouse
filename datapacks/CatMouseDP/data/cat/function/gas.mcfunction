## Gas the mice!
scoreboard players remove @s energy 15
execute as @a[tag=mouse] at @s run summon area_effect_cloud ~ ~ ~ {Radius:3f,Duration:100,DurationOnUse:100,WaitTime:50,potion_contents:{potion:"minecraft:poison"}}