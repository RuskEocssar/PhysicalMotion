 #> zz.ph_motion:define
# スコアボード等の定義のみ
# @within
#   function zz.ph_motion:load

## Scoreboard objective
    #> Puclic
    # @public
    #> Local (core)
    # @within ph_motion:**
        scoreboard objectives add _ dummy
        scoreboard objectives add phmS. dummy "汎用"
        scoreboard objectives add phmS.time dummy "時間"
        scoreboard objectives add phmS.distance dummy "距離"
        scoreboard objectives add phmS.count dummy "カウント"
        # パラメータ
        scoreboard objectives add phmS.1 dummy "parm1"
        scoreboard objectives add phmS.2 dummy "parm2"
        scoreboard objectives add phmS.3 dummy "parm3"
        scoreboard objectives add phmS.4 dummy "parm4"
        scoreboard objectives add phmS.5 dummy "parm4"
        scoreboard objectives add phmS.6 dummy "parm4"
        scoreboard objectives add phmS.7 dummy "parm4"
        scoreboard objectives add phmS.8 dummy "parm4"
        # x
        scoreboard objectives add phmS.x.1 dummy "x1"
        scoreboard objectives add phmS.x.2 dummy "x2"
        scoreboard objectives add phmS.x.3 dummy "x3"
        scoreboard objectives add phmS.x.4 dummy "x4"
        # y
        scoreboard objectives add phmS.y.1 dummy "y1"
        scoreboard objectives add phmS.y.2 dummy "y2"
        scoreboard objectives add phmS.y.3 dummy "y3"
        scoreboard objectives add phmS.y.4 dummy "y4"
        # z
        scoreboard objectives add phmS.z.1 dummy "z1"
        scoreboard objectives add phmS.z.2 dummy "z2"
        scoreboard objectives add phmS.z.3 dummy "z3"
        scoreboard objectives add phmS.z.4 dummy "z4"

## Score Holder
    scoreboard players set #c-1000 _ -1000
    scoreboard players set #c-100 _ -100
    scoreboard players set #c-2 _ -2
    scoreboard players set #c-1 _ -1
    scoreboard players set #c2 _ 2
    scoreboard players set #c20 _ 20
    scoreboard players set #c100 _ 100
    scoreboard players set #c1000 _ 1000
    scoreboard players set #c1000000 _ 1000000

## Tags
    #> Public
    # @public
 
## Team
    #> Private
    # @within ph_motion:**

## Entity
    #> Local
    # @within ph_motion:**
        # summon entity ~ ~ ~ {UUID:[I;1340080827,type,temp,index]}
        #define entity 4fe002bb-0-0-0-1 Marker1
        #define entity 4fe002bb-0-0-0-2 Marker2
        #define entity 4fe002bb-0-0-0-3 Marker3