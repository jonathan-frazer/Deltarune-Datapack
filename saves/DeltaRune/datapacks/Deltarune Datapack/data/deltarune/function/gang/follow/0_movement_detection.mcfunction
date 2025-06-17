#Copy
execute store result score temp dR_PosX run data get entity @s Pos[0] 100
execute store result score temp dR_PosY run data get entity @s Pos[1] 100
execute store result score temp dR_PosZ run data get entity @s Pos[2] 100

scoreboard players operation temp dR_PosX -= @s dR_PosX
scoreboard players operation temp dR_PosY -= @s dR_PosY
scoreboard players operation temp dR_PosZ -= @s dR_PosZ

#Store positions for next cycle
execute store result score @s dR_PosX run data get entity @s Pos[0] 100
execute store result score @s dR_PosY run data get entity @s Pos[1] 100
execute store result score @s dR_PosZ run data get entity @s Pos[2] 100

#Determine if moving
    #X Axis
    execute if score temp dR_PosX matches ..-1 store result score @s dR_delX run scoreboard players operation temp dR_PosX *= negativeOne SRXIITimer
    execute unless score temp dR_PosX matches ..-1 store result score @s dR_delX run scoreboard players get temp dR_PosX
    
    #Y Axis
    execute if score temp dR_PosY matches ..-1 store result score @s dR_delY run scoreboard players operation temp dR_PosY *= negativeOne SRXIITimer
    execute unless score temp dR_PosY matches ..-1 store result score @s dR_delY run scoreboard players get temp dR_PosY
    
    #Z Axis
    execute if score temp dR_PosZ matches ..-1 store result score @s dR_delZ run scoreboard players operation temp dR_PosZ *= negativeOne SRXIITimer
    execute unless score temp dR_PosZ matches ..-1 store result score @s dR_delZ run scoreboard players get temp dR_PosZ