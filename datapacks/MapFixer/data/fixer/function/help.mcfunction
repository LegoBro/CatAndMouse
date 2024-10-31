## Help Text
tellraw @s [{"color":"#0400ff","text":"Map Fixer by LegoBro ","bold": true,"underlined": true}]
tellraw @s [{"color":"gold","text":"How to use: "}]
tellraw @s [{"color":"yellow","text":"1. Run /function fixer:load to set up variables.", "underlined":true, "clickEvent":{"action": "run_command","value": "/function fixer:load"}}]
tellraw @s [{"color":"yellow","text":"2. Run /function fixer:corner1 to set your first corner of the region.", "underlined":true ,"clickEvent":{"action": "run_command","value": "/function fixer:corner1"}}]
tellraw @s [{"color":"yellow","text":"3. Run /function fixer:corner2 to set your second corner of the region.", "underlined":true ,"clickEvent":{"action": "run_command","value": "/function fixer:corner2"}}]
tellraw @s [{"color":"yellow","text":"4. Pick your iteration speed (default 100 blocks/tick)", "underlined":true, "clickEvent":{"action": "suggest_command","value": "/scoreboard players set #dev.i_amount fvar "}}]
tellraw @s [{"color":"yellow","text":"5. Set up what you want changed with /function fixer:settings", "underlined":true, "clickEvent":{"action": "run_command","value": "/function fixer:settings"}}]
tellraw @s [{"color":"yellow","text":"6. Run the Fixer with /function fixer:start", "underlined":true, "clickEvent":{"action": "suggest_command","value": "/function fixer:start"}}]
