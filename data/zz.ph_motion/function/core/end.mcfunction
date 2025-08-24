#> zz.ph_motion:core/end
# 終了 1->速度下限 2->最大距離 3->時間経過 4->衝突上限 5->ブロックに衝突 6->エンティティに衝突
# @within
#   function zz.ph_motion:core/**

## ファンクションの実行

## データの処理
    # スコア
    scoreboard players reset @s phmS.x.1
    scoreboard players reset @s phmS.y.1
    scoreboard players reset @s phmS.z.1
    scoreboard players reset @s phmS.time
    scoreboard players reset @s phmS.distance
    scoreboard players reset @s phmS.count
    # その他
    tag @s remove phmT.motion
    execute if data storage ph_motion:zz/core data{kill:true} run kill @s