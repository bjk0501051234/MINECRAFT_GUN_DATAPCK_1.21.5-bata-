tellraw @s [{"text":"\n"},{"text":"╔══════════════════╗\n","color":"gold"},{"text":"  권총 선물 - 대상 선택\n","color":"aqua","bold":true},{"text":"╠══════════════════╣\n","color":"gold"}]
execute as @a run function guns:shop/gift_pistol_entry
tellraw @s [{"text":"╠══════════════════╣\n","color":"gold"},{"text":"  "},{"text":"[취소]","color":"red","bold":true,"click_event":{"action":"run_command","command":"function guns:shop/confirm_pistol"}},{"text":"\n"},{"text":"╚══════════════════╝","color":"gold"}]
