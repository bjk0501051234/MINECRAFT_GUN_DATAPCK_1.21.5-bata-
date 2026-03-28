execute positioned ~ ~-1.3 ~ if entity @s[distance=..1.0] run function hitscan:give_headshot
execute unless entity @s[nbt={Tags:["headshot_done"]}] run function hitscan:give_bodyshot
tag @s remove headshot_done
