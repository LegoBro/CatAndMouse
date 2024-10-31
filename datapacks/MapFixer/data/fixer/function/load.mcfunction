## Loads fixer fvariables
scoreboard objectives add fvar dummy

# Default speed is 100 blocks per tick
scoreboard players set #dev.i_amount fvar 100

scoreboard players set #20 fvar 20
scoreboard players set #60 fvar 60
scoreboard players set #-1 fvar -1

scoreboard players add #lock_inventories fvar 0
scoreboard players add #inv_paintings fvar 0
scoreboard players add #inv_item_frames fvar 0
scoreboard players add #lock_item_frames fvar 0
scoreboard players add #lock_armor_stands fvar 0
scoreboard players add #lock_flower_pots fvar 0
scoreboard players add #lock_chiseled_bookshelf fvar 0

tellraw @s [{"color":"yellow","text":"2. Run /function fixer:corner1 to set your first corner of the region.", "underlined":true ,"clickEvent":{"action": "run_command","value": "/function fixer:corner1"}}]