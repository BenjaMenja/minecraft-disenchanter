recipe take @s disenchant:disenchanter
advancement revoke @s only disenchant:craft
clear @s knowledge_book 1

give @p bat_spawn_egg{display:{Name:'{"text":"Disenchanter"}',Lore:['{"text":"No, it\'s not a bat spawn egg."}','{"text":"Places a disenchanter that extracts enchantments."}','{"text":"To use, throw an enchanted item, a diamond, and a book."}','{"text":"The lowest enchantment is taken off of the item and applied to the book."}','{"text":"This process consumes 1 diamond."}']},Enchantments:[{}],EntityTag:{Silent:1b,Invulnerable:1b,Tags:["disenchanter"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:1000,ShowParticles:0b}]}} 1