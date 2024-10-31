## Settings
tellraw @s [{"color":"dark_purple","text":"Settings List:"}]
execute if score #lock_inventories fvar matches 1 run tellraw @s [{"color":"light_purple","text":"* Lock Inventories", "underlined":true, "clickEvent":{"action": "run_command","value": "/scoreboard players set #lock_inventories fvar 0"}}]
execute if score #lock_inventories fvar matches 0 run tellraw @s [{"color":"gray","text":"* Lock Inventories", "underlined":true, "clickEvent":{"action": "run_command","value": "/scoreboard players set #lock_inventories fvar 1"}}]

execute if score #inv_paintings fvar matches 1 run tellraw @s [{"color":"light_purple","text":"* Invulnerable Paintings", "underlined":true, "clickEvent":{"action": "run_command","value": "/scoreboard players set #inv_paintings fvar 0"}}]
execute if score #inv_paintings fvar matches 0 run tellraw @s [{"color":"gray","text":"* Invulnerable Paintings", "underlined":true, "clickEvent":{"action": "run_command","value": "/scoreboard players set #inv_paintings fvar 1"}}]

execute if score #inv_item_frames fvar matches 1 run tellraw @s [{"color":"light_purple","text":"* Invulnerable Item Frames", "underlined":true, "clickEvent":{"action": "run_command","value": "/scoreboard players set #inv_item_frames fvar 0"}}]
execute if score #inv_item_frames fvar matches 0 run tellraw @s [{"color":"gray","text":"* Invulnerable Item Frames", "underlined":true, "clickEvent":{"action": "run_command","value": "/scoreboard players set #inv_item_frames fvar 1"}}]

execute if score #lock_item_frames fvar matches 1 run tellraw @s [{"color":"light_purple","text":"* Fixed Item Frames", "underlined":true, "clickEvent":{"action": "run_command","value": "/scoreboard players set #lock_item_frames fvar 0"}}]
execute if score #lock_item_frames fvar matches 0 run tellraw @s [{"color":"gray","text":"* Fixed Item Frames", "underlined":true, "clickEvent":{"action": "run_command","value": "/scoreboard players set #lock_item_frames fvar 1"}}]

execute if score #lock_armor_stands fvar matches 1 run tellraw @s [{"color":"light_purple","text":"* Lock Armorstands", "underlined":true, "clickEvent":{"action": "run_command","value": "/scoreboard players set #lock_armor_stands fvar 0"}}]
execute if score #lock_armor_stands fvar matches 0 run tellraw @s [{"color":"gray","text":"* Lock Armorstands", "underlined":true, "clickEvent":{"action": "run_command","value": "/scoreboard players set #lock_armor_stands fvar 1"}}]

execute if score #lock_flower_pots fvar matches 1 run tellraw @s [{"color":"light_purple","text":"* Lock Flower Pots", "underlined":true, "clickEvent":{"action": "run_command","value": "/scoreboard players set #lock_flower_pots fvar 0"}}]
execute if score #lock_flower_pots fvar matches 0 run tellraw @s [{"color":"gray","text":"* Lock Flower Pots", "underlined":true, "clickEvent":{"action": "run_command","value": "/scoreboard players set #lock_flower_pots fvar 1"}}]

execute if score #lock_chiseled_bookshelf fvar matches 1 run tellraw @s [{"color":"light_purple","text":"* Lock Chiseled Bookshelves", "underlined":true, "clickEvent":{"action": "run_command","value": "/scoreboard players set #lock_chiseled_bookshelf fvar 0"}}]
execute if score #lock_chiseled_bookshelf fvar matches 0 run tellraw @s [{"color":"gray","text":"* Lock Chiseled Bookshelves", "underlined":true, "clickEvent":{"action": "run_command","value": "/scoreboard players set #lock_chiseled_bookshelf fvar 1"}}]



# End
tellraw @s [{"color":"dark_purple","text":"Reload Settings\n", "underlined":true, "clickEvent":{"action": "run_command","value": "/function fixer:settings"}}]
tellraw @s [{"color":"yellow","text":"6. Run the Fixer with /function fixer:start", "underlined":true, "clickEvent":{"action": "suggest_command","value": "/function fixer:start"}}]