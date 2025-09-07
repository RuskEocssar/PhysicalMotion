#> zz.pm_motion:ray/entity/001
# エンティティにヒット
# @within
#   function zz.pm_motion:**

## エンティティにヒット
    scoreboard players set #pmmH.ray001 pmmS. 1
    scoreboard players set #pmmH.root pmmS. 2
    tag @s add pmmT.hitted
    data modify storage pm_motion:zz _.hit.entity set value 1b
    function zz.pm_motion:ray/macro/hitted_entity with storage pm_motion:zz _