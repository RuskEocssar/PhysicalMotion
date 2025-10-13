#> zz.pm_motion:load
# 定義/初期設定
# @within
#   tag/function minecraft:load

## 各種定義
    function zz.pm_motion:define

## 入力の初期設定
    execute unless data storage pm_motion: in run data modify storage pm_motion: in set value {}
    execute unless data storage pm_motion: in_default run data modify storage pm_motion: in_default set value {\
        gravity:9.8f,  velocity:20f,\
        c_drag:0.4f,    c_ldrag:1.6f,       c_reflect:0.8f, c_friction:0.7f,\
        max_time:200,   max_distance:150,   max_reflect:5,  min_velocity:0.001f,\
        rotate:true, size:0, kill:"none", entity:true, block:true,\
        additional:[],\
        events:{trail:"",hit_every:"",hit_entity:"",hit_block:"",hit_last:"",time_last:""},\
    }
    execute unless data storage pm_motion:zz id run data modify storage pm_motion:zz id set value {used:[]}
    
## スコアのリセット

## ストレージ初期化

## (0,0)チャンクの常時読み込み
    forceload add 0 0

## 計算用エンティティの召喚
    execute unless score 4fe002bb-0000-0000-0000-000000000001 _ matches 1 store success score 4fe002bb-0000-0000-0000-000000000001 _ run summon marker 0 0 0 {UUID:[I;1340080827,0,0,1]}
    execute unless score 4fe002bb-0000-0000-0000-000000000002 _ matches 1 store success score 4fe002bb-0000-0000-0000-000000000002 _ run summon marker 0 0 0 {UUID:[I;1340080827,0,0,2]}