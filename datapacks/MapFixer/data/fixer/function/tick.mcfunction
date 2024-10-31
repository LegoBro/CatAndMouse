execute as @e[type=slime,tag=dev.fixer] at @s run function fixer:iterate
execute unless score #dev.iteration fvar >= #fixer.size fvar run schedule function fixer:tick 1

#scoreboard players operation #scan fvar = #dev.iteration fvar
#scoreboard players operation #scan fvar *= #10000 fvar
#scoreboard players operation #scan fvar /= #51004 fvar

#scoreboard players operation #scan.1 fvar = #scan fvar
#scoreboard players operation #scan.1 fvar /= #100 fvar

#scoreboard players operation #scan.2 fvar = #scan fvar
#scoreboard players operation #scan.2 fvar %= #100 fvar

# Total time
scoreboard players operation #scan.total_time fvar = #fixer.size fvar
scoreboard players operation #scan.total_time fvar /= #dev.i_amount fvar
scoreboard players operation #scan.total_time fvar /= #20 fvar
scoreboard players operation #scan.total_time fvar /= #60 fvar

scoreboard players operation #scan.time fvar = #dev.iteration fvar
scoreboard players operation #scan.time fvar /= #dev.i_amount fvar
scoreboard players operation #scan.time fvar /= #20 fvar
scoreboard players operation #scan.time fvar /= #60 fvar
scoreboard players operation #scan.time fvar *= #-1 fvar
scoreboard players operation #scan.time fvar += #scan.total_time fvar



title @a actionbar [{"text":"Block "},{"score":{"name":"#dev.iteration","objective": "fvar"}},{"text":" of "},{"score":{"name":"#fixer.size","objective": "fvar"}},{"text":" ETA: ","color":"yellow"},{"score":{"name":"#scan.time","objective": "fvar"},"color":"yellow"},{"text":"m","color":"yellow"}]

# Total blocks: 510048385
## BPT = #dev.i_amount fvar
# Total time =  510048385/BPT/20t/60s = in min
# Time so far = blocks/BPT/20/t/60s
#