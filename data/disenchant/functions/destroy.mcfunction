kill @e[type=item,tag=disenchant_item,sort=nearest,limit=1]
kill @e[type=item,nbt={Item:{id:"minecraft:enchanting_table"}},sort=nearest,limit=1]
fill ~ ~ ~ ~ ~ ~ air replace enchanting_table
summon item ~ ~ ~ {Health:100,Item:{id:"minecraft:bat_spawn_egg",Count:1b,tag:{display:{Name:'{"text":"Disenchanter"}',Lore:['{"text":"No, it\'s not a bat spawn egg."}','{"text":"Places a disenchanter that extracts enchantments."}','{"text":"To use, throw an enchanted item, a diamond, and a book."}','{"text":"The lowest enchantment is taken off of the item and applied to the book."}','{"text":"This process consumes 1 diamond."}']},Enchantments:[{}],EntityTag:{Silent:1b,Invulnerable:1b,Tags:["disenchanter"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:1000,ShowParticles:0b}]}}}}
kill @s