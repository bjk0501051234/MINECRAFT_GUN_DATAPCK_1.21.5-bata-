execute store result score #tanpirandom dummy run random value 0..2

execute if score #tanpirandom dummy matches 0 run data merge entity @e[tag=tanpi,sort=nearest,limit=1] {transformation:[0.00041f,-0.00019f,-0.06727f,0.82796f,-0.00632f,0.02894f,-0.00020f,-0.00905f,0.02853f,0.00642f,0.00092f,-0.67233f,0.00000f,0.00000f,0.00000f,1.00000f]}
execute if score #tanpirandom dummy matches 1 run data merge entity @e[tag=tanpi,sort=nearest,limit=1] {transformation:[0.00041f,0.02069f,-0.04786f,0.87815f,-0.00632f,0.02078f,0.04601f,-0.15752f,0.02853f,0.00431f,0.01089f,-0.70596f,0.00000f,0.00000f,0.00000f,1.00000f]}
execute if score #tanpirandom dummy matches 2 run data merge entity @e[tag=tanpi,sort=nearest,limit=1] {transformation:[-0.01033f,0.00601f,-0.06134f,0.84785f,-0.01608f,0.02206f,0.02577f,-0.09823f,0.02211f,0.01886f,-0.00993f,-0.58553f,0.00000f,0.00000f,0.00000f,1.00000f]}
schedule function guns:pistol/schedule/tanpidel 2t