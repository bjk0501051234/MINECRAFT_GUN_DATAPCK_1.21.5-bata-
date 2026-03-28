scoreboard players add #zoom dummy 1
execute if score #zoom dummy matches 2.. run scoreboard players set #zoom dummy 0
execute if score #zoom dummy matches 1 run function guns:pistol/schedule/z
execute if score #zoom dummy matches 0 run function guns:pistol/schedule/nz
execute if score #zoom dummy matches 1 run effect give @s slowness infinite 1 true
execute if score #zoom dummy matches 0 run effect clear @s slowness
playsound item.spyglass.use weather @s ~ ~ ~ 1 1
