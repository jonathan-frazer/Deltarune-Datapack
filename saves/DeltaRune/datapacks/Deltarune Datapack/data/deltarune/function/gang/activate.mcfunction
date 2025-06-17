#Trigger Effect
function deltarune:gang/effect

#Activate Delta Rune Tag
tag @s add dR-Activate

#Spawn Gang
    #Spawn Susie
    $execute rotated ~ 0 run summon armor_stand ^1 ^ ^-1 {NoBasePlate:1b,ShowArms:1b,Rotation:[$(yaw)f,$(pitch)f],Tags:["deltaFunGang"],CustomName:'{"text":"dR-Susie"}',ArmorItems:[{id:"minecraft:leather_boots",count:1,components:{dyed_color:16721591}},{id:"minecraft:netherite_leggings",count:1,components:{"minecraft:trim":{material:"minecraft:redstone",pattern:"minecraft:rib"}}},{id:"minecraft:leather_chestplate",count:1,components:{dyed_color:16721591}},{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;-370278613,-1945810462,-1903774811,765431584],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvY2YzYWM1MmZiNDdjYjQ3MzE0ZjgxYWI1ZmZiNGMzODE2N2FhYTNjZjBlM2E3YjQwOTRkMjljMjVmMjhkYTkwOCJ9fX0="}]}}}],DisabledSlots:4144959,HandItems:[{},{id:"minecraft:iron_axe",count:1b,components:{custom_model_data:900625}}]}
    #Spawn Ralsei
    $execute rotated ~ 0 run summon armor_stand ^-1 ^ ^-1 {NoBasePlate:1b,ShowArms:1b,Rotation:[$(yaw)f,$(pitch)f],Tags:["deltaFunGang"],CustomName:'{"text":"dR-Ralsei"}',ArmorItems:[{id:"minecraft:leather_boots",count:1,components:{dyed_color:5361526}},{id:"minecraft:netherite_leggings",count:1,components:{"minecraft:trim":{material:"minecraft:emerald",pattern:"minecraft:rib"}}},{id:"minecraft:leather_chestplate",count:1,components:{dyed_color:5361526}},{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;1731650999,882985293,-1442330354,1302117306],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNGQ5YzRjYTZlZTI3MmIzNjcyYWQyZGZkOWU5YjhlYTM1MjU1Y2FlMzk5ZTI3ZmYyMmFiNjk4NTAyYWRkYTE4YiJ9fX0="}]}}}],DisabledSlots:4144959,HandItems:[{},{}]}

#Setup Follow Data
execute store result score @s dR_PosX run data get entity @s Pos[0] 100
execute store result score @s dR_PosY run data get entity @s Pos[1] 100
execute store result score @s dR_PosZ run data get entity @s Pos[2] 100

#Attributes
attribute @s generic.max_health modifier add deltarune:gang_health 2.0 add_multiplied_total
effect give @s regeneration 2 255 true