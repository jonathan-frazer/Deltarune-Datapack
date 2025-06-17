#Get the Gang to Follow You
function deltarune:gang/follow/0_movement_detection
execute if predicate deltarune:gang/is_moving at @s run function deltarune:gang/follow/1_trail
execute at @s[predicate=deltarune:gang/is_moving] run function deltarune:gang/follow/2_move_along
execute at @s[predicate=!deltarune:gang/is_moving] run function deltarune:gang/follow/3_still_pos

execute if predicate deltarune:gang/is_moving at @s run particle firework ~ ~0.1 ~ 0.125 0.01 0.125 0.001 1 normal @a[distance=..16]
#tellraw @a [{"score":{"name":"@s","objective":"dR_delX"}},{"text":" "},{"score":{"name":"@s","objective":"dR_delY"}},{"text":" "},{"score":{"name":"@s","objective":"dR_delZ"}}]


#Take Damage if the Gang Takes Damage
execute at @s run function deltarune:gang/damage/0

#Deactivate by removing the head
execute unless predicate deltarune:gang/has_head run function deltarune:gang/deactivate