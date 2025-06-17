#Fountain Ready
    execute as @a[predicate=deltarune:having_dark_effect,x_rotation=75..90,predicate=deltarune:on_ground,tag=!dR_summonReady] at @s anchored eyes positioned ^ ^ ^0.75 run function deltarune:dark_fountain/0

    execute as @a[predicate=deltarune:having_dark_effect,tag=dR_summonReady] at @s run function deltarune:dark_fountain/1_dur
    execute as @a[predicate=!deltarune:having_dark_effect,tag=dR_summonReady] at @s run function deltarune:dark_fountain/clear

    execute as @a[scores={dR_transform=1..}] at @s run function deltarune:dark_fountain/3_seq

#Gang
    execute as @a[tag=dR-Activate] run function deltarune:gang/tick

    #Follow
    kill @e[type=area_effect_cloud,tag=deltaTrail,scores={SRXIITimer=20..}]