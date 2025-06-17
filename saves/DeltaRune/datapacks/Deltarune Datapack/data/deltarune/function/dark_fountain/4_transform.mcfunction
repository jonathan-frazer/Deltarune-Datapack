#Transform
scoreboard players reset @s dR_transform

#Activate Gang
data modify storage deltarune:player_rotation yaw set from entity @s Rotation[0]
data modify storage deltarune:player_rotation pitch set from entity @s Rotation[1]
function deltarune:gang/activate with storage deltarune:player_rotation

playsound entity.zombie.infect master @a[distance=..16] ~ ~ ~ 1 1.75 1

#Fill Light
execute at @s run fill ~2 ~ ~2 ~-2 ~1 ~-2 light replace air

#Set time to Night, for Dramatic effect
time set midnight