#Ralsei
execute rotated ~ 0 positioned ^-1.25 ^ ^0.1 run tp @s ~ ~ ~ ~ 0
scoreboard players reset @s dR_transform
data merge entity @s {Pose:{LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]}}