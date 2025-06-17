#Lock in Place
summon area_effect_cloud ~ ~ ~ {Duration:240,Tags:["dR_darkLock"]}
tp @n[type=area_effect_cloud,tag=dR_darkLock] @s

#Create Interaction Entity
summon interaction ~ ~ ~ {width:0.2f,height:0.2f,response:1b,Tags:["darkPointer"]}

tag @s add dR_summonReady