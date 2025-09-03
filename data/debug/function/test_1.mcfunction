    tag @s add pmmT.through
    scoreboard players set #entity pmmS.distance 1200
    execute positioned 0.0 0.0 0.0 positioned ^ ^ ^2 positioned 0.0 ~ ~ positioned ^ ^ ^-1 facing 0.0 0.0 0.0 positioned as @s run tp 4fe002bb-0-0-0-1 ~ ~ ~ ~ ~

    scoreboard players operation #pmmH.1 pmmS.distance = #entity pmmS.distance
    function zz.pm_motion:ray/064
    tag @s remove pmmT.through