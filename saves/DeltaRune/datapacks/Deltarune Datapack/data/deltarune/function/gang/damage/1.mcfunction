data modify storage deltarune:player_rotation yaw set from entity @s Rotation[0]
data modify storage deltarune:player_rotation pitch set from entity @s Rotation[1]

execute unless entity @n[type=armor_stand,name="dR-Susie",distance=..32] run function deltarune:gang/damage/2_susie with storage deltarune:player_rotation
execute unless entity @n[type=armor_stand,name="dR-Ralsei",distance=..32] run function deltarune:gang/damage/2_ralsei with storage deltarune:player_rotation