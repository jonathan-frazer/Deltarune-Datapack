execute positioned as @n[type=area_effect_cloud,tag=deltaTrail,distance=..32,scores={SRXIITimer=12}] facing entity @p[tag=dR-Activate] feet run tp @s ~ ~ ~ ~ ~

scoreboard players add @s dR_transform 1
execute if score @s dR_transform matches 0..3 run data merge entity @s {Pose:{LeftLeg:[-25f,0f,0f],RightLeg:[25f,0f,0f]}}
execute if score @s dR_transform matches 4..8 run data merge entity @s {Pose:{LeftLeg:[25f,0f,0f],RightLeg:[-25f,0f,0f]}}
execute if score @s dR_transform matches 8.. run scoreboard players set @s dR_transform 0