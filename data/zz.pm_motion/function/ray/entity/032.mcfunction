#> zz.pm_motion:ray/entity/032
# エンティティにヒット
# @within
#   function zz.pm_motion:**

## エンティティにヒット
    scoreboard players set #pmmH.ray032 pmmS. 1

## 探査を終了する場合
    execute unless data storage pm_motion:zz data{size:5} run return fail
    tag @s add entity.hitted
    scoreboard players set #pmmH.root pmmS. 2
    data modify storage pm_motion:zz _.hit.entity set value 1b