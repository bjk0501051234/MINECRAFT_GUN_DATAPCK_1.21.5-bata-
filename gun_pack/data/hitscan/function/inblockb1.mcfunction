scoreboard players set #inblockb dummy 0
execute if block ~ ~ ~ #dummy:penetrable run scoreboard players set #inblockb dummy 1
execute if score #inblockb dummy matches 0 positioned ^ ^ ^-0.125 run return run function hitscan:inblockb2
execute if score #inblockb dummy matches 1 positioned ^ ^ ^0.125 run function hitscan:inblockb2