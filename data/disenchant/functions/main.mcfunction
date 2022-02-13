#Create and Destroy Disenchanter

execute as @e[type=bat,tag=disenchanter] at @s run function disenchant:create
execute as @e[type=area_effect_cloud,tag=disenchanter] at @s unless block ~ ~ ~ enchanting_table run function disenchant:destroy

#Disenchanter Particles

execute at @e[type=item,tag=disenchant_item] run particle portal ~ ~ ~ 0.1 0.1 0.1 1 2

#Check if items are on the disenchanter and do the thing

execute as @e[type=area_effect_cloud,tag=disenchanter] at @s positioned ~ ~0.5 ~ if entity @e[type=item,nbt={Item:{tag:{Enchantments:[{}]}}},distance=..0.5] if entity @e[type=item,nbt={Item:{id:"minecraft:book"}}] if entity @e[type=item,nbt={Item:{id:"minecraft:diamond"}}] run function disenchant:disenchant 