function deltarune:dark_fountain/clear

#Begin Transformation
scoreboard players set @s dR_transform 1
effect give @s slowness 2 22 true

#Sound
playsound entity.zombie_villager.cure master @a[distance=..16] ~ ~ ~ 1 1.75 1