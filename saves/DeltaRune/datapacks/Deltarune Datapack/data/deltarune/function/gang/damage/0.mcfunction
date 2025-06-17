#If Neither are near the player, they take damage
execute unless entity @n[type=armor_stand,tag=deltaFunGang,distance=..16] run damage @s 12.0 magic
execute if entity @n[type=armor_stand,tag=deltaFunGang,distance=..16] unless entity @n[type=armor_stand,name="dR-Ralsei",distance=..16] run damage @s 4.0 magic
execute if entity @n[type=armor_stand,tag=deltaFunGang,distance=..16] unless entity @n[type=armor_stand,name="dR-Susie",distance=..16] run damage @s 3.0 magic

#After Taking damage, the appropriate one is respawned
execute unless entity @n[type=armor_stand,name="dR-Ralsei",distance=..16] run function deltarune:gang/damage/1
execute unless entity @n[type=armor_stand,name="dR-Susie",distance=..16] run function deltarune:gang/damage/1