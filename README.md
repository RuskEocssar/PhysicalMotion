# PhysicalMotion
A Datapack for simulating point-mass physics of entities.
エンティティの質点としての物理挙動を再現するデータパックです。
放物線状にエンティティを飛ばしたりすることができます。

対応バージョン：26.1

## 目次
- [使い方](#使い方)
- [使用例](#使用例)

# 使い方

### `pm_motion:motion`
　`pm_motion:motion`ファンクションを実行すると、実行時の向きに、入力した速度成分を強さとしたモーションを実行者のエンティティに付与します(プレイヤーを除く)。
オプションの入力はストレージ`pm_motion: in`に設定します。

▼基本的な使い方
```mcfunction
# 入力
data modify storage pm_motion: in set valuse {velocity:<velocity>}

# 実行
execute rotated <x rotation> <y rotation> run function pm_motion:motion
```

**入力フォーマット**
```html
* <>内はデータ型 ()内は初期値

pm_motion: in {
    velocity : <float>,     | (20f) 与えるモーションの強さ。秒速を設定する。
    gravity : <float>,      | (9.8f) 重力の強さ。 
    c_drag : <float>,       | (0.4f) 空気抵抗の強さ。 
    c_ldrag : <float>,      | (1.6f) 流体中における粘性抵抗の強さ。 
    c_reflect : <float>,    | (0.8f) 反射係数の強さ。 
    c_friction : <float>,   | (0.7f) 反射する際の摩擦の強さ。 
    max_time : <int>,       | (200) モーションを継続する時間。 
    max_distance : <int>,   | (150) モーションを継続する移動距離。 
    max_reflect : <int>,    | (5) モーションを継続する反射回数。 
    min_velocity : <float>, | (0.001f) 最小速度。 
    time_scale : <int>,     | (50) 演算の時間ステップ(ms)。50ms(1tick)で等倍となる。 
    rotate : <boolen>,      | (true) エンティティを常に進行方向に向かせるかどうか。 
    size : <int>,           | (0) エンティティの当たり判定の大きさ。0～6で設定でき、値が大きいほど当たり判定が大きい。
    kill : <string>,        | ("none") モーションが終了した際に、エンティティを削除するかどうか。"none":削除しない "this":モーションを付与されているエンティティのみを削除 "all":騎乗しているエンティティを含めて削除
    entity : <boolen>,      | (true) エンティティと衝突するかどうか。 
    block : <boolen>,       | (true) ブロックと衝突するかどうか。 
    events : {
        trail : <string>,       | ("") 0.64m毎に実行されるコマンド。パーティクルを設定して軌道を表示させることができる。 
        hit_every : <string>,   | ("") エンティティまたはブロックにヒットしたときに実行されるコマンド。
        hit_entity : <string>,  | ("") エンティティにヒットしたときに実行されるコマンド。
        hit_block : <string>,   | ("") ブロックにヒットしたときに実行されるコマンド。
        hit_last : <string>,    | ("") 最後の衝突時に実行されるコマンド。
        last : <string>,        | ("") モーション終了時に実行されるコマンド。
    }
}
```

**使用例**
```mcfunction
# 向きを設定
data modify storage pm_motion: in set valuse {velocity:0.3f}
execute rotated 0 -45 run function pm_motion:motion
```

### `pm_motion:add`
　`pm_motion:add`ファンクションを実行すると、実行時の向きに、入力した速度成分を強さとしたモーションを実行者のエンティティに追加で付与します。
オプションの入力はストレージ`pm_motion: in`に設定します。

▼基本的な使い方
```mcfunction
# 入力
data modify storage pm_motion: in set valuse {velocity:<velocity>}

# 実行
execute rotated <x rotation> <y rotation> run function pm_motion:add
```

**入力フォーマット**
```html
* <>内はデータ型 ()内は初期値

pm_motion: in {
    velocity : <float>,     | (20f) 与えるモーションの強さ。秒速を設定する。
}
```

**使用例**
```mcfunction
# 向きを設定
data modify storage pm_motion: in set valuse {velocity:0.3f}
execute rotated 0 -45 run function pm_motion:add
```

### `pm_motion:rotate`
　`pm_motion:rotate`ファンクションを実行すると、速度を維持したまま実行時の向きにベクトルを変更します。

▼基本的な使い方
```mcfunction
# 実行
execute rotated <x rotation> <y rotation> run function pm_motion:rotate
```

**使用例**
```mcfunction
# 向きを設定
execute rotated 0 -45 run function pm_motion:rotate
```

### `pm_motion:execute`
　ファンクションの入力設定と実行を、マクロによって1行で行うためのファンクションです。マクロを使う分負荷がやや高くなりますが、簡易的に実行することができます。

**入力フォーマット**
```html
* <>内はデータ型 ()内は初期値

function pm_motion:execute {                 
    func : <string>,        | 実行するファンクション pm_motion:以降のファンクションのパスを記入する 例:pm_motion:motion -> motion
    in : <comapund>,        | ファンクションの入力 pm_motion: に設定するNBTデータ
}
```

**使用例**
```mcfunction
function pm_motion:execute {func:"motion",in:{velocity:0.3f,add:false,inertia:true}}
```

### `pm_motion:kill_all`
　`pm_motion:kill_all`ファンクションを実行すると、実行者と実行者に騎乗しているエンティティをキルします。

▼基本的な使い方
```mcfunction
# 実行
function pm_motion:kill_all
```