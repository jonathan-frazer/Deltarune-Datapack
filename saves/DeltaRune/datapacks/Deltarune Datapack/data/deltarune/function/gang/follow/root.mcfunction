#Move Along
execute if predicate deltarune:gang/is_moving run function deltarune:gang/follow/2_move_along

#If not Moving
execute unless predicate deltarune:gang/is_moving run function deltarune:gang/follow/3_still_pos