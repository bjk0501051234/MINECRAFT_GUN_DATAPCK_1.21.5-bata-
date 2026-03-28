tp @a ~ ~10 ~
execute as @a at @s run function guns:give/pistol_single
tellraw @a {text:'권총 지급! 슬롯1: 좌클릭=발사 / 우클릭=줌토글 / 총→오프핸드=재장전',color:'gold'}
