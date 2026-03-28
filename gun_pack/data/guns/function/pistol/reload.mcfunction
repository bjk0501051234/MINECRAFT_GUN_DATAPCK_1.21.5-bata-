scoreboard players set #reloading dummy 1

# 후퇴고정 (0발일 때)
execute if score #pistol_remain_bullet dummy matches 0 if score #zoom dummy matches 0 run schedule function guns:pistol/schedule/reload/slr0 1t
execute if score #pistol_remain_bullet dummy matches 0 if score #zoom dummy matches 1 run schedule function guns:pistol/schedule/reload/slr0 5t
execute if score #pistol_remain_bullet dummy matches 0 if score #zoom dummy matches 1 run function guns:pistol/zoom
execute if score #pistol_remain_bullet dummy matches 0 run return fail

execute if score #zoom dummy matches 0 run schedule function guns:pistol/schedule/reload/r0 1t
execute if score #zoom dummy matches 1 run schedule function guns:pistol/schedule/reload/r0 5t
execute if score #zoom dummy matches 1 run function guns:pistol/zoom
