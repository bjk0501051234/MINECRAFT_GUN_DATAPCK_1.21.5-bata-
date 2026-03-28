execute store result score #selecteditemslot dummy run data get entity @p SelectedItemSlot
scoreboard players set #hold_weapon dummy 0
execute if score #selecteditemslot dummy matches 0 if score #isgetgun_pistol dummy matches 1 run scoreboard players set #hold_weapon dummy 1
execute if score #selecteditemslot dummy matches 1 if score #isgetgun_ak dummy matches 1 run scoreboard players set #hold_weapon dummy 2
