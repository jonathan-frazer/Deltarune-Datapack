#Slot Detection
execute store result score @s SelectedSlot run data get entity @s SelectedItemSlot

#Delta-Rule
execute as @a[scores={dR_globalCooldown=1..}] at @s positioned ^ ^ ^3 run function deltarune:gang/follow/delta_rule/0
execute as @a[predicate=!deltarune:gang/is_moving] at @s positioned ^ ^ ^3 as @e[type=#impact_projectiles,distance=..3.1] at @s run function deltarune:gang/follow/delta_rule/1_deflect

# Gang AI
    #Get the Gang to Follow You
    function deltarune:gang/follow/0_movement_detection
    execute if predicate deltarune:gang/is_moving at @s run function deltarune:gang/follow/1_trail
    execute at @s[predicate=deltarune:gang/is_moving] run function deltarune:gang/follow/2_move_along
    execute at @s[predicate=!deltarune:gang/is_moving] run function deltarune:gang/follow/3_still_pos

    #tellraw @a [{"score":{"name":"@s","objective":"dR_delX"}},{"text":" "},{"score":{"name":"@s","objective":"dR_delY"}},{"text":" "},{"score":{"name":"@s","objective":"dR_delZ"}}]

    #Take Damage if the Gang Takes Damage
    execute at @s run function deltarune:gang/damage/0

    #Deactivate by removing the head
    execute unless predicate deltarune:gang/has_head run function deltarune:gang/deactivate

# Abilities
# Slot 1:
    #Kris
    execute if score @s[scores={SelectedSlot=0,dR_globalCooldown=0}] SRXIIClick matches 1..3 run function deltarune:gang/abilities/slot_1/kris/sword/toggle

scoreboard players reset @s SRXIIClick