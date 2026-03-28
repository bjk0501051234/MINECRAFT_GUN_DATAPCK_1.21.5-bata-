execute store result score #tanpirandom dummy run random value 0..2

execute if score #tanpirandom dummy matches 0 run data merge entity @e[tag=tanpi,sort=nearest,limit=1] {transformation:[-0.01830f,0.01020f,-0.04693f,0.84111f,-0.00892f,0.02127f,0.04241f,-0.06149f,0.02097f,0.01795f,-0.02290f,-0.33338f,0.00000f,0.00000f,0.00000f,1.00000f]}
execute if score #tanpirandom dummy matches 1 run data merge entity @e[tag=tanpi,sort=nearest,limit=1] {transformation:[-0.01830f,0.00391f,-0.05164f,0.82331f,-0.00892f,0.02565f,0.02710f,-0.00452f,0.02097f,0.01433f,-0.03353f,-0.32468f,0.00000f,0.00000f,0.00000f,1.00000f]}
execute if score #tanpirandom dummy matches 2 run data merge entity @e[tag=tanpi,sort=nearest,limit=1] {transformation:[-0.01830f,-0.00543f,-0.05107f,0.77867f,-0.00892f,0.02822f,0.00189f,0.06774f,0.02097f,0.00727f,-0.04375f,-0.33288f,0.00000f,0.00000f,0.00000f,1.00000f]}
schedule function guns:pistol/schedule/tanpidel 2t