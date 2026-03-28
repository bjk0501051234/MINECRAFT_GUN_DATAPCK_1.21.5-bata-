execute as @a[tag=player1] if score @s slide_timer matches 1.. run scoreboard players remove @s slide_timer 1
execute as @a[tag=player1] if score @s slide_timer matches 0 if score @s slide_running matches 1 run function guns:slide_stop_p1
execute as @a[tag=player2] if score @s slide_timer matches 1.. run scoreboard players remove @s slide_timer 1
execute as @a[tag=player2] if score @s slide_timer matches 0 if score @s slide_running matches 1 run function guns:slide_stop_p2
