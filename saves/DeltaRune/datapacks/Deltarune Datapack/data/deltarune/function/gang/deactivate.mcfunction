#Sound
playsound entity.zombie.infect master @a[distance=..16] ~ ~ ~ 1 1.75 1

#Kill all trails
kill @e[type=area_effect_cloud,tag=deltaTrail,distance=..64]

#Clear Armor
clear @s leather_chestplate[custom_name='{"bold":false,"color":"light_purple","italic":false,"text":"Mantle"}',lore=['"Made of pure leather"'],custom_data={deltaRuneItem:1b},enchantments={levels:{"minecraft:binding_curse":1}},dyed_color={rgb:2671851,show_in_tooltip:false}] 1
clear @s netherite_leggings[custom_name='{"bold":false,"color":"#67cdf9","italic":false,"text":"Armored Leggings"}',lore=['"A pair of leggings, lightly armored"'],custom_data={deltaRuneItem:1b},enchantments={levels:{"minecraft:binding_curse":1}},trim={material:"minecraft:diamond",pattern:"minecraft:rib",show_in_tooltip:false}]
clear @s leather_boots[custom_name='{"bold":false,"color":"light_purple","italic":false,"text":"Shoes"}',lore=['"Keeps your feet from aching"'],custom_data={deltaRuneItem:1b},enchantments={levels:{"minecraft:binding_curse":1}},dyed_color={rgb:2671851,show_in_tooltip:false}] 1

#Clear Tags
tag @s remove dR-Activate

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