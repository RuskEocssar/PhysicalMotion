#> zz.pm_motion:ray/hitted
# ヒットしたエンティティ
# @within
#   function zz.pm_motion:**

## ヒットしたエンティティ
    tag @s add pmmT.hitted
    scoreboard players set #pmmH.root pmmS. 1
    data modify storage pm_motion:zz _.hit.entity set value 1b
    # タグを付与する
    function zz.pm_motion:ray/macro/hitted_entity with storage pm_motion:zz _