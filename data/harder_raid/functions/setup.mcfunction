#Runs when the game is loaded and reloaded
#Adds a dummy scoreboard named evoker_board 
#If there is no player named rand in the scoreboard, initialize rand with 0

scoreboard objectives add evoker_board dummy "Evoker Board"
execute unless score rand evoker_board matches 0..1 run scoreboard players set rand evoker_board 0
function harder_raid:evokertotem
function harder_raid:herejohnny
function harder_raid:summonillusioner