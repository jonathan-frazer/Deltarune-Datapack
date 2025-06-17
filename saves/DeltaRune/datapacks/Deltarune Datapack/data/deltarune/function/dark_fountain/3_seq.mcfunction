scoreboard players add @s dR_transform 1

particle dust{color:[0,0,0],scale:1.5} ~ ~3 ~ 0.25 1.10 0.25 0.001 800 normal
particle dust{color:[0,0,0],scale:1.5} ~ ~3 ~ 0.25 1.10 0.25 0.001 200 force

particle firework ~ ~3 ~ 0.25 1.10 0.25 0.001 10 normal
particle firework ~ ~3 ~ 0.25 1.10 0.25 0.001 4 force

particle dust{color:[0,0,0],scale:1.5} ~ ~5 ~ 0.25 1.10 0.25 0.001 800 normal
particle dust{color:[0,0,0],scale:1.5} ~ ~5 ~ 0.25 1.10 0.25 0.001 200 force

particle firework ~ ~5 ~ 0.25 1.10 0.25 0.001 10 normal
particle firework ~ ~5 ~ 0.25 1.10 0.25 0.001 4 force

execute if score @s dR_transform matches 40.. run function deltarune:dark_fountain/4_transform
