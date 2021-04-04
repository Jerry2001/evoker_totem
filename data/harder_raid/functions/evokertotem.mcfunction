#If an evoker has been added to the scoreboard, initializes his score with the value of current rand
#Add evoker_flag tag to flag tagged evoker

schedule function harder_raid:evokertotem 1s
execute at @e[type=minecraft:player] as @e[type= minecraft:evoker, sort= nearest, limit=1, tag =! evoker_flag, distance=0..60] run tag @s add processing
execute at @e[type=minecraft:player] as @e[type= minecraft:evoker, tag= processing, limit= 1, distance=0..60] run tag @s add evoker_flag
execute at @e[type=minecraft:player] as @e[type=minecraft:evoker, limit=1, sort=nearest, tag=processing, distance=0..60] if score rand evoker_board matches 1 run data merge entity @s {HandItems:[{Count:1, id:totem_of_undying}]}
execute at @e[type=minecraft:player] as @e[type= minecraft:evoker, tag= processing, limit= 1, distance=0..60] run tag @s remove processing