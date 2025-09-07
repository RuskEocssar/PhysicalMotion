#> zz.pm_motion:ray/entity/064
# エンティティにヒット
# @within
#   function zz.pm_motion:**

## エンティティにヒット
    scoreboard players set #pmmH.ray064 pmmS. 1

## 探査を終了する場合
    execute unless data storage pm_motion:zz data{size:6} run return fail
    tag @s add pmmT.hitted
    scoreboard players set #pmmH.root pmmS. 2
    data modify storage pm_motion:zz _.hit.entity set value 1b
    function zz.pm_motion:ray/macro/hitted_entity with storage pm_motion:zz _