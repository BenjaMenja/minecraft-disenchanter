#Reduce Diamond Count
execute store result score #count temp run data get entity @e[type=item,nbt={Item:{id:"minecraft:diamond"}},sort=nearest,limit=1] Item.Count
execute if score #count temp matches 2.. run scoreboard players set #countFlag temp 1
execute if score #countFlag temp matches 1 run scoreboard players remove #count temp 1
execute if score #countFlag temp matches 1 store result entity @e[type=item,nbt={Item:{id:"minecraft:diamond"}},sort=nearest,limit=1] Item.Count byte 1 run scoreboard players get #count temp
execute unless score #countFlag temp matches 1 run kill @e[type=item,nbt={Item:{id:"minecraft:diamond"}},sort=nearest,limit=1]
scoreboard players set #countFlag temp 0

#reduce book count
execute store result score #count temp run data get entity @e[type=item,nbt={Item:{id:"minecraft:book"}},sort=nearest,limit=1] Item.Count
execute if score #count temp matches 2.. run scoreboard players set #countFlag temp 1
execute if score #countFlag temp matches 1 run scoreboard players remove #count temp 1
execute if score #countFlag temp matches 1 store result entity @e[type=item,nbt={Item:{id:"minecraft:book"}},sort=nearest,limit=1] Item.Count byte 1 run scoreboard players get #count temp
execute unless score #countFlag temp matches 1 run kill @e[type=item,nbt={Item:{id:"minecraft:book"}},sort=nearest,limit=1]
scoreboard players set #countFlag temp 0

#Perform disenchant

summon item ~ ~ ~ {Health:100,PickupDelay:20,Tags:["newEnchBook"],Item:{id:"minecraft:enchanted_book",Count:1b,tag:{StoredEnchantments:[{id:"minecraft:protection",lvl:1s}]}}}
data modify storage disenchant:enchant_store Enchantment set from entity @e[type=item,nbt={Item:{tag:{Enchantments:[{}]}}},sort=nearest,limit=1] Item.tag.Enchantments[0]
data modify entity @e[type=item,tag=newEnchBook,sort=nearest,limit=1] Item.tag.StoredEnchantments[0] set from storage disenchant:enchant_store Enchantment
data remove entity @e[type=item,nbt={Item:{tag:{Enchantments:[{}]}}},sort=nearest,limit=1] Item.tag.Enchantments[0]



