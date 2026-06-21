#> pm_motion:cancel
# 移動を中断する
# 終了処理 lastの実行やキルなどが実行されない
# @public

## 終了
    data modify storage pm_motion:zz data set value {kill:"none",events:{last:""}}
    function zz.pm_motion:move/end