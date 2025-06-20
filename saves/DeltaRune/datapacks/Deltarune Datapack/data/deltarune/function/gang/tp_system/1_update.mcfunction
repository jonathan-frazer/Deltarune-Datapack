#Unique ID
execute if score @s dR_TP > maxBar dR_TP run scoreboard players operation temp dR_TP = @s dR_TP

$bossbar set deltarune:tp_$(id_1)$(id_2)$(id_3)$(id_4) name {"text":"TP: $(title)%"}
$execute if score @s dR_TP <= maxBar dR_TP store result bossbar deltarune:tp_$(id_1)$(id_2)$(id_3)$(id_4) value run scoreboard players get @s dR_TP
$execute if score @s dR_TP <= maxBar dR_TP run bossbar set deltarune:tp_$(id_1)$(id_2)$(id_3)$(id_4) color yellow

$execute if score temp dR_TP > maxBar dR_TP store result bossbar deltarune:tp_$(id_1)$(id_2)$(id_3)$(id_4) value run scoreboard players operation temp dR_TP -= maxBar dR_TP
$execute if score @s dR_TP > maxBar dR_TP run bossbar set deltarune:tp_$(id_1)$(id_2)$(id_3)$(id_4) color blue