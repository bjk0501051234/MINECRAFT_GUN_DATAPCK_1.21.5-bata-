execute as @a[tag=player1] if score @s slide_timer matches 0 if score @s slide_running matches 0 if predicate riding:sprint run function guns:slide_start_p1
execute as @a[tag=player2] if score @s slide_timer matches 0 if score @s slide_running matches 0 if predicate riding:sprint run function guns:slide_start_p2
