# @s = 플레이어
execute if score #hold_weapon dummy matches 1 if score #shooting dummy matches 0 if score #reloading dummy matches 0 run function guns:pistol/zoom
execute if score #hold_weapon dummy matches 2 if score #shooting dummy matches 0 if score #reloading dummy matches 0 run function guns:ak/zoom
