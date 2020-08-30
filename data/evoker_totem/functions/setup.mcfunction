scoreboard objectives add evoker_board dummy "Evoker Board"
execute unless score rand evoker_board matches 0..1 run scoreboard players set rand evoker_board 0
