#Wipe Items
kill @n[type=item,nbt={Item:{id:"minecraft:rotten_flesh",count:64}},distance=..1.5]
kill @n[type=item,nbt={Item:{id:"minecraft:leather",count:16}},distance=..1.5]
kill @n[type=item,nbt={Item:{id:"minecraft:rabbit_foot",count:1}},distance=..1.5]
kill @n[type=item,nbt={Item:{id:"minecraft:wither_rose",count:1}},distance=..1.5]

playsound entity.wither.spawn master @a[distance=..16] ~ ~ ~ 1 2.0 1

particle dust{scale:1.5f,color:[0.0f,0.0f,0.0f]} ~ ~ ~ 0.125 0.125 0.125 0.001 5 force @a[distance=..16]
particle end_rod ~ ~ ~ 0.125 0.125 0.125 0.001 5 force @a[distance=..16]

#Spawn Dark Potion
summon item ~ ~0.1 ~ {Item:{components: {"minecraft:custom_name": '{"bold":true,"color":"#303030","italic":false,"obfuscated":false,"strikethrough":false,"text":"Dark Potion","underlined":false}', "minecraft:potion_contents": {custom_effects: [{duration: 240, amplifier: 1b, ambient: 1b, show_icon: 0b, id: "minecraft:darkness", show_particles: 0b}, {duration: 240, amplifier: 3b, ambient: 1b, show_icon: 0b, id: "minecraft:blindness", show_particles: 0b}], custom_color: 0}}, count: 1, id: "minecraft:potion"},Motion:[0.012,0.1,-0.049]}