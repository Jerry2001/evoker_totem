execute if score spawnjohnny raid_control matches 1 run schedule function harder_raid:herejohnny 1s

execute at @e[type=minecraft:player] as @e[type= minecraft:vindicator, sort= nearest, limit=1, tag =! vindicator_flag, distance=0..60] run tag @s add v_processing
execute at @e[type=minecraft:player] as @e[type= minecraft:vindicator, tag= v_processing, limit= 1, distance=0..60] run tag @s add vindicator_flag
execute at @e[type=minecraft:player] as @e[type=minecraft:vindicator, limit=1, sort=nearest, tag=v_processing, distance=0..60] at @s unless entity @e[type=minecraft:vindicator, nbt={Johnny:1b}, distance=0..150] unless entity @e[type=minecraft:ravager, distance=0..150] run data merge entity @s {Johnny:1b, CustomName:"{\"text\":\"Johnny\"}"}
execute at @e[type=minecraft:player] as @e[type= minecraft:vindicator, tag= v_processing, limit= 1, distance=0..60] run tag @s remove v_processing
