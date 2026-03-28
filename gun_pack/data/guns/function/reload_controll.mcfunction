scoreboard players set #hold_weapon dummy 0
execute if items entity @s weapon.offhand minecraft:exposed_copper_door run scoreboard players set #hold_weapon dummy 1
execute if items entity @s weapon.offhand minecraft:weathered_copper_door run scoreboard players set #hold_weapon dummy 2
execute if score #hold_weapon dummy matches 0 run return fail
item replace entity @s weapon.mainhand with copper_door[item_model=air,item_name="장전중...",lore=["장전매너!!!"]]
effect clear @s slowness
scoreboard players set #shooting dummy 0
execute if score #hold_weapon dummy matches 1 run function guns:pistol/reload
execute if score #hold_weapon dummy matches 2 run function guns:ak/reload
