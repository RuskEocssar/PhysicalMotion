
tag @s add pmmT.through
execute anchored eyes positioned ^ ^ ^1 run summon item_display ~ ~ ~ {Tags:[test],Passengers:[{id:"minecraft:mannequin",Tags:[pmmT.through],profile:{name:"Rusk_Eocssar"},attributes:[{id:"scale",base:0.5f}]}]}
# execute anchored eyes positioned ^ ^ ^1 run summon minecraft:mannequin ~ ~ ~ {Tags:[test],profile:{name:"Rusk_Eocssar"},attributes:[{id:"scale",base:0.4f}]}
execute as @n[tag=test] run function pm_motion:execute {func:"motion",in:{max_reflect:20,velocity:50,events:{trail:"particle composter ~ ~ ~ 0 0 0 0.001 1",time_last:"function pm_motion:kill_all",hit_last:""},max_time:200,gravity:20}}
tag @n[tag=test] remove test