# execute anchored eyes positioned ^ ^ ^ run summon marker ~ ~ ~ {Tags:[test,ray]}

# execute store result score _ _ run random value 0..5
# execute if score _ _ matches 0 anchored eyes positioned ^ ^ ^1 run summon item_display ~ ~ ~ {Tags:[test],Passengers:[{id:"minecraft:mannequin",DeathTime:20,Tags:[pmmT.through],profile:{name:"Rusk_Eocssar"},attributes:[{id:"scale",base:0.5f}]}]}
# execute if score _ _ matches 1 anchored eyes positioned ^ ^ ^1 run summon item_display ~ ~ ~ {Tags:[test],Passengers:[{id:"minecraft:mannequin",DeathTime:20,Tags:[pmmT.through],profile:{name:"komaramune"},attributes:[{id:"scale",base:0.5f}]}]}
# execute if score _ _ matches 2 anchored eyes positioned ^ ^ ^1 run summon item_display ~ ~ ~ {Tags:[test],Passengers:[{id:"minecraft:mannequin",DeathTime:20,Tags:[pmmT.through],profile:{name:"Midorikuma"},attributes:[{id:"scale",base:0.5f}]}]}
# execute if score _ _ matches 3 anchored eyes positioned ^ ^ ^1 run summon item_display ~ ~ ~ {Tags:[test],Passengers:[{id:"minecraft:mannequin",DeathTime:20,Tags:[pmmT.through],profile:{name:"Chuzume"},attributes:[{id:"scale",base:0.5f}]}]}
# execute if score _ _ matches 4 anchored eyes positioned ^ ^ ^1 run summon item_display ~ ~ ~ {Tags:[test],Passengers:[{id:"minecraft:mannequin",DeathTime:20,Tags:[pmmT.through],profile:{name:"HikakinGames"},attributes:[{id:"scale",base:0.5f}]}]}
# execute anchored eyes positioned ^ ^ ^1 run summon item_display ~ ~ ~ {Tags:[test],Passengers:[{id:"minecraft:mannequin",DeathTime:20,Tags:[pmmT.through],pose:"fall_flying",profile:{name:"Rusk_Eocssar"},attributes:[{id:"scale",base:0.5f}]}]}
execute anchored eyes positioned ^ ^ ^1 run summon item_display ~ ~ ~ {Tags:[test,ray],Passengers:[{id:"minecraft:item_display",item:{id:"stone"}}]}
# execute anchored eyes positioned ^ ^ ^1 run summon minecraft:mannequin ~ ~ ~ {Tags:[test],profile:{name:"Rusk_Eocssar"},attributes:[{id:"scale",base:0.4f}]}
# execute anchored eyes positioned ^ ^ ^1 run summon minecraft:interaction ~ ~ ~ {Tags:[test],width:0f,height:0f,interaction:{player:[I;0,0,0,0],timestamp:0}}
data modify entity @e[tag=test,type=interaction,limit=1] interaction.player set from entity @s UUID
# particle flash{color:[1,1,0.6,0.3]} ~ ~ ~ 0 0 0 0.01 1 force
data modify storage pm_motion: in set value {size:6,max_reflect:10,velocity:30,kill:"this",max_distance:100,max_time:100,c_drag:0,events:{trail:"",last:"function pm_motion:kill_all"}}
execute as @e[tag=test] positioned ~ ~-0.5 ~ run function pm_motion:motion

tag @e[tag=test] remove test