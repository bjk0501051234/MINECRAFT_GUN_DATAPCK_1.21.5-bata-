scoreboard players set @a[tag=player1] slide_running 0
scoreboard players set @a[tag=player1] slide_timer 0
# 애니메이션 중지 로직 필요 시 추가
execute as @e[tag=gp_rig_p1,limit=1] run function animated_java:player/animations/slide/stop
