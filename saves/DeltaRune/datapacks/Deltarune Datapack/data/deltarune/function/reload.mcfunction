tellraw @a [{"text":"Deltarune","color":"#6bffff","bold": true},{"text":" Fun","color":"#ff71ff","bold": false},{"text":" Gang","color":"#5cff88","bold": false},{"text":" Loaded!","color": "white","bold": false}]

scoreboard objectives add SRXIITimer dummy
scoreboard objectives add SRXIIClick used:warped_fungus_on_a_stick
scoreboard objectives add SelectedSlot dummy

#Transform
scoreboard players set negativeOne SRXIITimer -1 
scoreboard objectives add dR_transform dummy

#Position for Followings
scoreboard objectives add dR_PosX dummy
scoreboard objectives add dR_PosY dummy
scoreboard objectives add dR_PosZ dummy
scoreboard objectives add dR_delX dummy
scoreboard objectives add dR_delY dummy
scoreboard objectives add dR_delZ dummy

#TP Bar
scoreboard objectives add dR_TP dummy
scoreboard players set maxBar dR_TP 1000
scoreboard objectives add dR_globalCooldown dummy

schedule function deltarune:mainhalfsec 10t
schedule function deltarune:mainsec 20t