kill @e[tag=layers,distance=..10,limit=50]
kill @e[tag=tracker,distance=..10,limit=5]
# 바닥 끼임 방지: 0.1 위에 소환 후 y_velo_control이 on_ground 판정으로 자동 안착
execute if entity @s[tag=player2] run function guns:mount_summon_p2
execute unless entity @s[tag=player2] run function guns:mount_summon_p1
