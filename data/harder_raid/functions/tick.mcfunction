#Runs every tick
#If rand is equal to 2, set rand as -1
#Then increases rand by 1.

execute if score rand evoker_board matches 2 run scoreboard players set rand evoker_board -1
scoreboard players add rand evoker_board 1
