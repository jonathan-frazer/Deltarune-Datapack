#Sound
playsound entity.zombie.infect master @a[distance=..16] ~ ~ ~ 1 1.75 1

#Kill all trails
kill @e[type=area_effect_cloud,tag=deltaTrail,distance=..64]

#Clear Armor and Items
clear @s leather_chestplate[custom_data={deltaRuneItem:1b}]
clear @s netherite_leggings[custom_data={deltaRuneItem:1b}]
clear @s leather_boots[custom_data={deltaRuneItem:1b}]
clear @s warped_fungus_on_a_stick[custom_data={deltaRuneItem:1b}]

#Clear Tags
tag @s remove dR-Activate

#Scores
scoreboard players reset @s dR_TP
scoreboard players reset @s dR_globalCooldown

#Bossbar
data modify storage deltarune:temp UniqueID.id_1 set from entity @s UUID[0]
data modify storage deltarune:temp UniqueID.id_2 set from entity @s UUID[1]
data modify storage deltarune:temp UniqueID.id_3 set from entity @s UUID[2]
data modify storage deltarune:temp UniqueID.id_4 set from entity @s UUID[3]
function deltarune:gang/tp_system/2_remove with storage deltarune:temp UniqueID

#Delete Gang
execute at @e[type=armor_stand,tag=deltaFunGang,limit=2,distance=..64,sort=nearest] run particle smoke ~ ~1 ~ 0.125 0.75 0.125 0.001 10 normal @a[distance=..64] 
kill @n[type=armor_stand,name="dR-Susie"]
kill @n[type=armor_stand,name="dR-Ralsei"]

#Clear Scoreboard Data
    #Follow
    scoreboard players reset @s dR_delX
    scoreboard players reset @s dR_delY
    scoreboard players reset @s dR_delZ
    scoreboard players reset @s dR_PosX
    scoreboard players reset @s dR_PosY
    scoreboard players reset @s dR_PosZ

#Attributes
attribute @s generic.max_health modifier remove deltarune:gang_health