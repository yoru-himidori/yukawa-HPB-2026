
[cm]

@clearstack

[wait time="1000"]
@bg storage="ED.jpg" time="1000" wait="true"

*start 


[button x=780 y=400 graphic="title/button_start.png" enterimg="title/button_start2.png" clickimg="title/button_start3.png" clickse="pa.ogg" target="gamestart" keyfocus="1"]

[s]


*gamestart
;一番最初のシナリオファイルへジャンプする
@jump storage="scene1.ks"

