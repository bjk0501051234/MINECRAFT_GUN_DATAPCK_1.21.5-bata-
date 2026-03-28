# shooter 태그 플레이어 기준 nearest
execute if score #bhit dummy matches 0 if entity @e[tag=bullet_marker,limit=1] as @a[tag=shooter,limit=1] at @s as @e[tag=bullet_marker,sort=nearest,limit=1] at @s run function hitscan:bm_at_marker
