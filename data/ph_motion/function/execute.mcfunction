#> ph_motion:execute
# マクロを用いて入力と実行を1ラインで実行するためのファンクション
# @public

## 入力の反映とコマンドの実行
    $data modify storage ph_motion: in set value $(in)
    $function ph_motion:$(func)