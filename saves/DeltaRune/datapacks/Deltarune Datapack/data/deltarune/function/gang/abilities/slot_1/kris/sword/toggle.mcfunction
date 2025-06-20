#Toggles B/w Sword and Fight
execute as @s[tag=!dRks1switch,predicate=!deltarune:ability/slot_1/sword_ready] run function deltarune:gang/abilities/slot_1/kris/sword/ready
execute as @s[tag=!dRks1switch,predicate=deltarune:ability/slot_1/sword_ready] run function deltarune:gang/abilities/slot_1/kris/sword/unready
tag @s remove dRks1switch