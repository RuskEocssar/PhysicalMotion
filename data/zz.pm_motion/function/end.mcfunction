#> zz.pm_motion:end
# 終了 1->速度下限 2->最大距離 3->時間経過 4->衝突上限 5->ブロックに衝突 6->エンティティに衝突
# @within
#   function zz.pm_motion:**

## ファンクションの実行

## データの処理
    # スコア
    scoreboard players reset @s pmmS.x.1
    scoreboard players reset @s pmmS.y.1
    scoreboard players reset @s pmmS.z.1
    scoreboard players reset @s pmmS.time
    scoreboard players reset @s pmmS.distance
    scoreboard players reset @s pmmS.count
    # その他
    tag @s remove pmmT.motion
    execute if data storage pm_motion:zz data{kill:true} run kill @s