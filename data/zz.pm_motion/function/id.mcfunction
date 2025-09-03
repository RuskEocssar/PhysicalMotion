#> zz.pm_motion:id
# idの割り振り
# @within
#   function zz.pm_motion:**

## idの割り振り
    # 使用済みデータがない場合
    execute unless data storage pm_motion:zz id.used[-1] store result score @s pmmS.id run scoreboard players add #core pmmS.id 1
    # 使用済みデータがある場合
    execute if data storage pm_motion:zz id.used[-1] store result score @s pmmS.id run data get storage pm_motion:zz id.used[-1]
    execute if data storage pm_motion:zz id.used[-1] run data remove storage pm_motion:zz id.used[-1]