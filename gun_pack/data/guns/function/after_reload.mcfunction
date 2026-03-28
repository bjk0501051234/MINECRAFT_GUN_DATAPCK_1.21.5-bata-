scoreboard players set #reloading dummy 0
item replace entity @a weapon.offhand with air
execute if score #isgetgun_pistol dummy matches 1 run item replace entity @a hotbar.0 with exposed_copper_door[item_model=air,item_name="권총",lore=['전설의 무기']]
execute if score #isgetgun_ak dummy matches 1 run item replace entity @a hotbar.1 with minecraft:weathered_copper_door[item_name=AK,item_model=air,lore=['더 강해진 전설의 무기']]
