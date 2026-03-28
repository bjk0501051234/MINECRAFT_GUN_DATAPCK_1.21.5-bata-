execute if score #isgetgun_pistol dummy matches 0 if score #isgetgun_ak dummy matches 0 run return fail
data merge entity @e[tag=ui1,sort=nearest,limit=1] {text:[{text:"ㅡㅡㅡㅡㅡㅡ\n\n\n\n\n\n\n\n\n\n\n\n\n"},{storage:guninfo,nbt:text0}]}
data merge entity @e[tag=ui2,sort=nearest,limit=1] {text:[{text:"ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"},{storage:guninfo,nbt:text1}]}
execute if score #hold_weapon dummy matches 0 run data merge entity @e[tag=ui3,sort=nearest,limit=1] {text:[{text:"ㅡㅡㅡㅡㅡ\n\n\n\n\n\n\n\n\n\n\n\n"}]}
execute if score #hold_weapon dummy matches 1 run data merge entity @e[tag=ui3,sort=nearest,limit=1] {text:[{text:"ㅡㅡㅡㅡㅡ\n\n\n\n\n\n\n\n\n\n\n\n"},{score:{objective:dummy,name:"#pistol_remain_bullet"}}," / inf"]}
execute if score #hold_weapon dummy matches 2 run data merge entity @e[tag=ui3,sort=nearest,limit=1] {text:[{text:"ㅡㅡㅡㅡㅡ\n\n\n\n\n\n\n\n\n\n\n\n"},{score:{objective:dummy,name:"#ak_remain_bullet"}}," / ",{score:{objective:dummy,name:"#ak_remain_mag"}}]}
