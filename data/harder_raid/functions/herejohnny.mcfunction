
schedule function harder_raid:herejohnny 1t
tag @e[type= minecraft:vindicator, sort= nearest, limit=1, tag =! vindicator_flag] add v_processing
tag @e[tag= v_processing, limit= 1] add vindicator_flag
execute as @e[type=minecraft:vindicator, limit=1, sort=nearest, tag=v_processing] at @s unless entity @e[type=minecraft:vindicator, nbt={Johnny:1b}, distance=0..150] unless entity @e[type=minecraft:ravager, distance=0..150] run data merge entity @s {Johnny:1b}
tag @e[tag=v_processing, limit= 1] remove v_processing