#Clear Player
execute as @a[tag=dR-Activate,nbt=!{DeathTime:0s}] run function deltarune:gang/deactivate

#Cycle every Half Second
schedule function deltarune:mainhalfsec 10t