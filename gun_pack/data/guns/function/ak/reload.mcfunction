scoreboard players set #reloading dummy 1

execute if score #zoom dummy matches 0 run schedule function guns:ak/schedule/reload/r0 1t
execute if score #zoom dummy matches 1 run schedule function guns:ak/schedule/reload/r0 5t

# 줌 풀기
execute if score #zoom dummy matches 1 run function guns:ak/zoom
