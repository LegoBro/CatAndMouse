## After finalizing finishes
scoreboard players set #game_state var 0
kill @e[type=item,tag=cheese]
kill @e[type=item,tag=catnip]
kill @e[type=item_display,tag=mouse_trap]
kill @e[type=area_effect_cloud]
execute as @a[tag=cat] run function cat:unload
execute as @a[tag=mouse] run function mouse:unload
clear @a
tp @a 0 100 0
forceload remove all