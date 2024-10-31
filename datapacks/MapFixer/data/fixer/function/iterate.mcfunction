## Iterates
scoreboard players add #dev.iteration fvar 1

## Item Locking
data merge block ~ ~ ~ {Lock:"123456"}
data merge entity @n[type=painting,distance=..1] {Invulnerable:1b}
data merge entity @n[type=item_frame,distance=..1] {Invulnerable:1b,Fixed:1b}
data merge entity @n[type=glow_item_frame,distance=..1] {Invulnerable:1b,Fixed:1b}
data merge entity @n[type=armor_stand,distance=..1] {DisabledSlots:4144959}
execute if block ~ ~ ~ #minecraft:flower_pots align xyz unless entity @n[type=marker,distance=..0.5,tag=i_pot_protector] run summon minecraft:interaction ~.5 ~-0.01 ~.5 {width:0.425f,height:0.425f,Tags:["i_pot_protector","tick.ignore"]}
execute if block ~ ~ ~ chiseled_bookshelf align xyz unless entity @n[type=marker,distance=..0.5,tag=i_pot_protector] run summon minecraft:interaction ~.5 ~-0.01 ~.5 {width:1.025f,height:1.025f,Tags:["i_pot_protector","tick.ignore"]}
execute store result score #dev.y fvar run data get entity @s Pos[1]
execute if score #dev.y fvar < #fixer.max.y fvar run tp @s ~ ~1 ~
execute if score #dev.y fvar >= #fixer.max.y fvar run function fixer:move_x with storage fixer

## Run again
scoreboard players operation #recurse fvar = #dev.iteration fvar
scoreboard players operation #recurse fvar %= #dev.i_amount fvar
execute unless score #recurse fvar matches 0 if entity @s at @s run function fixer:iterate
