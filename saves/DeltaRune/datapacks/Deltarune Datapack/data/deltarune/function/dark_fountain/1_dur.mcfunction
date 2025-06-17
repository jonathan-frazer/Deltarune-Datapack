tp @s @n[type=area_effect_cloud,tag=dR_darkLock,distance=..1]

execute if data entity @n[type=interaction,tag=darkPointer,distance=..1] attack.player if predicate deltarune:holding_sword run function deltarune:dark_fountain/2_open

data remove entity @n[type=interaction,tag=darkPointer,distance=..1] attack