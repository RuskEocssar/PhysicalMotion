tag @s add pmmT.through

execute anchored eyes positioned ^ ^ ^2 run summon marker ~ ~ ~ {Tags:[test]}

#execute anchored eyes positioned ^ ^ ^1 run summon item_display ~ ~ ~ {Tags:[test],Passengers:[{id:"minecraft:mannequin",DeathTime:20,Tags:[pmmT.through],profile:{name:"Rusk_Eocssar"},attributes:[{id:"scale",base:0.5f}]}]}
# execute anchored eyes positioned ^ ^ ^1 run summon minecraft:mannequin ~ ~ ~ {Tags:[test],profile:{name:"Rusk_Eocssar"},attributes:[{id:"scale",base:0.4f}]}
data modify storage pm_motion: in set value {size:6,max_reflect:1,velocity:50,events:{trail:"particle dust{color:[1,0,0],scale:1} ~ ~ ~ 0 0 0 0.001 1 force",last:"function pm_motion:kill_all",hit_entity:"execute as @e[tag=pmmT.hitted] run damage @s 5 minecraft:player_attack"},max_distance:200,max_time:200,gravity:20}
execute as @e[tag=test] positioned ~ ~-0.5 ~ run function pm_motion:motion

tag @e[tag=test] remove test