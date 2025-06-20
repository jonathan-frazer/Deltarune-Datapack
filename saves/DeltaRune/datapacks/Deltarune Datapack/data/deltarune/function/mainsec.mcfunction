#Floor Crafting
    execute as @e[type=item,nbt={Item:{id:"minecraft:rotten_flesh",count:64}}] at @s if entity @n[type=item,nbt={Item:{id:"minecraft:leather",count:16}},distance=..1.5] if entity @n[type=item,nbt={Item:{id:"minecraft:rabbit_foot",count:1}},distance=..1.5] if entity @n[type=item,nbt={Item:{id:"minecraft:wither_rose",count:1}},distance=..1.5] run function deltarune:craft

#Gang
    execute as @a[tag=!dR-Activate,nbt={DeathTime:0s},predicate=deltarune:gang/has_head] at @s run function deltarune:gang/activate with storage deltarune:player_rotation
    execute as @a[tag=dR-Activate] run function deltarune:gang/effect

#Clean Items
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{deltaRuneItem:1b}}},OnGround:1b}]

#Cycle every Second
schedule function deltarune:mainsec 20t