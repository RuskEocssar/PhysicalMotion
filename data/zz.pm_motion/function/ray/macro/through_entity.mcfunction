#> zz.pm_motion:ray/every_hit
# イベント実行
# @within
#   function zz.pm_motion:**

## イベント実行
    $execute as @e[tag=pmmT.through.$(id)] unless function zz.pm_motion:ray/through_entity run tag @s remove pmmT.through.$(id)