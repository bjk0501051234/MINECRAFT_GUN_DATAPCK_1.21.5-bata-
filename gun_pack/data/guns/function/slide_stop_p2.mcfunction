execute as @e[type=minecraft:item_display,tag=aj.player.root,tag=gp_rig_p2,limit=1] run function animated_java:player/animations/slide/stop
scoreboard players set @a[tag=player2,limit=1] slide_running 0
