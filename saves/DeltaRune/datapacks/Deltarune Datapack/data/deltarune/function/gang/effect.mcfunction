#Cooldowns
execute if score @s dR_globalCooldown matches 1.. run scoreboard players remove @s dR_globalCooldown 1

#Gives Effect
execute unless data entity @s Inventory[{Slot:102b}].id run item replace entity @s armor.chest with leather_chestplate[custom_name='{"bold":false,"color":"#67cdf9","italic":false,"text":"Mantle"}',lore=['{"bold":false,"color":"light_purple","italic":false,"text":"Made of pure Leather"}'],custom_data={deltaRuneItem:1b},enchantments={levels:{"minecraft:binding_curse":1}},dyed_color={rgb:2671851,show_in_tooltip:false}] 1
execute unless data entity @s Inventory[{Slot:101b}].id run item replace entity @s armor.legs with netherite_leggings[custom_name='{"bold":false,"color":"#67cdf9","italic":false,"text":"Armored Leggings"}',lore=['{"bold":false,"color":"light_purple","italic":false,"text":"A pair of leggings, lightly armored"}'],custom_data={deltaRuneItem:1b},enchantments={levels:{"minecraft:binding_curse":1}},trim={material:"minecraft:diamond",pattern:"minecraft:rib",show_in_tooltip:false}]
execute unless data entity @s Inventory[{Slot:100b}].id run item replace entity @s armor.feet with leather_boots[custom_name='{"bold":false,"color":"#67cdf9","italic":false,"text":"Shoes"}',lore=['{"bold":false,"color":"light_purple","italic":false,"text":"Keeps your feet from aching"}'],custom_data={deltaRuneItem:1b},enchantments={levels:{"minecraft:binding_curse":1}},dyed_color={rgb:2671851,show_in_tooltip:false}] 1
execute unless data entity @s Inventory[{Slot:103b}].id run item replace entity @s armor.head with player_head[custom_name='{"bold":false,"color":"aqua","italic":false,"text":"Kris"}',lore=['{"bold":false,"color":"light_purple","italic":false,"text":"Deltarune Fun Gang"}'],custom_data={deltaRuneItem:1b},profile={id:[I;-1226074379,-63551156,-1773466381,-1245487091],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjNiOTc4NjUzZTU0NzllYjExZWFiMThiZjEwNGVkNmQyYTZlNTJjZGU1ZjA5ZTA5MWFmM2QxMDE2ZTQ4NGMwMSJ9fX0="}]}] 1

#Slot Ability Icons
execute unless data entity @s Inventory[{Slot:0b}].id run item replace entity @s hotbar.0 with warped_fungus_on_a_stick[custom_name='{"bold":false,"color":"#ffb92c","italic":false,"text":"Fight"}',custom_data={deltaRuneItem:1b},custom_model_data=900627]
execute unless data entity @s Inventory[{Slot:1b}].id run item replace entity @s hotbar.1 with warped_fungus_on_a_stick[custom_name='{"bold":false,"color":"#ffb92c","italic":false,"text":"Magic"}',custom_data={deltaRuneItem:1b},custom_model_data=900629]
execute unless data entity @s Inventory[{Slot:2b}].id run item replace entity @s hotbar.2 with warped_fungus_on_a_stick[custom_name='{"bold":false,"color":"#ffb92c","italic":false,"text":"Act"}',custom_data={deltaRuneItem:1b},custom_model_data=900625]
execute unless data entity @s Inventory[{Slot:3b}].id run item replace entity @s hotbar.3 with warped_fungus_on_a_stick[custom_name='{"bold":false,"color":"#ffb92c","italic":false,"text":"Heal"}',custom_data={deltaRuneItem:1b},custom_model_data=900628]
execute unless data entity @s Inventory[{Slot:4b}].id run item replace entity @s hotbar.4 with warped_fungus_on_a_stick[custom_name='{"bold":false,"color":"#ffb92c","italic":false,"text":"Defend"}',custom_data={deltaRuneItem:1b},custom_model_data=900626]
execute unless data entity @s Inventory[{Slot:8b}].id run item replace entity @s hotbar.8 with warped_fungus_on_a_stick[custom_name='{"bold":true,"color":"aqua","italic":false,"text":"Team Blast"}',lore=['[{"bold":false,"color":"#5dff7d","italic":false,"text":"We\'re with you "},{"bold":false,"color":"#ff70ff","italic":false,"text":"Until the End"}]'],custom_data={deltaRuneItem:1b},enchantment_glint_override=true,custom_model_data=900630]

#Render TP Bar
data modify storage deltarune:temp UniqueID.id_1 set from entity @s UUID[0]
data modify storage deltarune:temp UniqueID.id_2 set from entity @s UUID[1]
data modify storage deltarune:temp UniqueID.id_3 set from entity @s UUID[2]
data modify storage deltarune:temp UniqueID.id_4 set from entity @s UUID[3]
scoreboard players set @s[scores={dR_TP=2001..}] dR_TP 2000
execute store result storage deltarune:temp UniqueID.title int 0.1 run scoreboard players get @s dR_TP
function deltarune:gang/tp_system/1_update with storage deltarune:temp UniqueID
    #Increase TP over time upto 100%
    execute if score @s dR_TP matches 0..995 run scoreboard players add @s dR_TP 5
    execute if score @s dR_TP matches 996..999 run scoreboard players set @s dR_TP 1000