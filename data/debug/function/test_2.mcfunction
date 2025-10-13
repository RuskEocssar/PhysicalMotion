execute at @s on target align xyz run tp @s ~0.5 ~0.5 ~0.5
# playsound minecraft:entity.zombie_villager.cure ambient @a ~ ~ ~ 0.3 2
execute at @s run particle flash{color:[1,1,0.6,0.3]} ~ ~ ~ 0 0 0 0.01 1 force
execute at @s run playsound minecraft:block.vault.open_shutter ambient @a ~ ~ ~ 1 2
execute at @s run playsound minecraft:entity.firework_rocket.twinkle block @a ~ ~ ~ 0.2 2