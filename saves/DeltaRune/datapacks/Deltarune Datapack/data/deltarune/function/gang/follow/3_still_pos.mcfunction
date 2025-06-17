#Susie in forward, Ralsei Behind
execute rotated as @s as @n[type=armor_stand,name="dR-Susie",distance=..32] run function deltarune:gang/follow/3_still_susie
execute rotated as @s as @n[type=armor_stand,name="dR-Ralsei",distance=..32] run function deltarune:gang/follow/3_still_ralsei

kill @e[type=area_effect_cloud,tag=deltaTrail,distance=..64]