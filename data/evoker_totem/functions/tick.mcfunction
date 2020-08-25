execute if score rand evoker_board matches 2 run scoreboard players set rand evoker_board -1
scoreboard players add rand evoker_board 1
tag @e[type= minecraft:evoker, sort= nearest, limit=1, tag =! evoker_flag] add processing
tag @e[tag= processing, limit= 1] add evoker_flag
execute as @e[type=minecraft:evoker, limit=1, sort=nearest, tag=processing] at @s if score rand evoker_board matches 1 run data merge entity @s {HandItems:[{Count:1, id:totem_of_undying}]}
tag @e[tag=processing, limit= 1] remove processing