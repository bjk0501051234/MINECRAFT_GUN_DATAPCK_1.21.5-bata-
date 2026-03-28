tellraw @s [{"text":"\n"},{"text":"╔══════════════════╗\n","color":"gold"},{"text":"  AK47 선물 - 대상 선택\n","color":"aqua","bold":true},{"text":"╠══════════════════╣\n","color":"gold"}]
execute as @a[tag=!shooter] run function guns:shop/gift_ak_entry
tellraw @s [{"text":"╠══════════════════╣\n","color":"gold"},{"text":"  "},{"text":"[취소]","color":"red","bold":true,"click_event":{"action":"run_command","command":"function guns:shop/confirm_ak"}},{"text":"\n"},{"text":"╚══════════════════╝","color":"gold"}]
