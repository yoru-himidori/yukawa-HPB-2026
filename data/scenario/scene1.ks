*start
[p]
[cm  ]
[clearfix]
[start_keyconfig]

[fadeoutbgm]


[chara_part  name="miko"  tatie="hutu" ]
[chara_part  name="ume"  tatie="nikoniko"  ]
[chara_part  name="haru"  tatie="nikoniko" ]
[chara_part  name="yuu"  tatie="hutu"  ]
;他のロールボタン
*roll
;[button name="role_button" role="save" graphic="button/save.png" enterimg="button/save2.png" x="507" y="950"]
;[button name="role_button" role="load" graphic="button/load.png" enterimg="button/load2.png" x="584" y="950"]
[button name="role_button" role="auto" graphic="button/auto.png" enterimg="button/auto2.png" x="661" y="950"]
[button name="role_button" role="backlog" graphic="button/log.png" enterimg="button/log2.png" x="738" y="950"]
[button name="role_button" role="window" graphic="button/hide.png" enterimg="button/hide2.png" x="815" y="950"]
[button name="role_button" role="skip" graphic="button/skip.png" enterimg="button/skip2.png" x="892" y="950"]
[button name="role_button" role="sleepgame" graphic="button/sleep.png" enterimg="button/sleep2.png" storage="config.ks" x="969" y="950"]
[button name="role_button2" role="window" graphic="button/hideB.png" enterimg="button/hideB2.png" x="1075" y="950"]


[bg storage="kuro.jpg" time="100"]

;メッセージウィンドウの設定
[position layer="message0" left=0 top=442 width=1280 height=278 page=fore visible=true]
[position layer="message0" frame="frame.png" margint="110" marginl="250" marginr="250" opacity="255" page="fore"]

;メッセージウィンドウの表示
@layopt layer="message0" visible="true"

;キャラクターの名前が表示される文字領域
;[ptext name="chara_name_area" layer="message0" color="white" size=28 bold=true x=180 y=510]
;上記で定義した領域がキャラクターの名前表示であることを宣言
[chara_config ptext="chara_name_area"]


;ロールボタン表示
[anim_role_button_visible]

;-------

[anim_role_button_visible]
[clearfix name="skip_fix"]
[bg storage="jinkokyo_living.jpg" time="500"]
[playbgm storage="oyasumiday.ogg"  ]



#
2026年5月14日。今日は有川さんのお誕生日。[p]
私たちは教会の台所で、ちょっとしたお祝いをした。[p]


[filter  blur="10"  layer="base"  ]

[chara_config  talk_focus="none"  ]
[chara_show name="haru" time="100" left="40"]
[chara_show name="miko" time="100" left="390"]
[chara_show name="ume" time="100" left="750"]
[playse  storage="kurakka.mp3"  ]
#３人
「お誕生日、おめでとーー！」[p]


[chara_part  name="yuu"  tatie="mehuse"  ]
[chara_hide_all time="100"]
[chara_show name="yuu" time="100" left="390"]

#有川イスト
「ありがとう。こんなふうに祝ってもらえて嬉しい」[p]


[chara_config  pos_mode="false"  talk_focus="brightness"  brightness_value="70"  ]

[chara_part  name="haru"  tatie="utagai"  ]
[chara_show name="haru" time="100" left="40"]
[playse  storage="pop_pyoi.mp3"  ]
#花咲はるあきら
「ゆっかわの誕生日が来ると寂しいんだ、年齢一緒じゃなくなっちゃうから」[p]

[playse  storage="pop_ase.mp3"  ]
#有川イスト
[chara_part  name="yuu"  tatie="mesorasi"  ]
「うーん、どうしようもない」[p]


[chara_hide_all time="100"]

#
ケーキは有川さんのリクエストでチョコレートケーキになった。[p]
彼がチョコレートケーキを食べているイメージはない。[r]
カフェに行くと、大抵ショートケーキやチーズケーキを頼んでいる。[p]
おそらく、チョコが好きなひーちくんに食べさせたかったのだろう。[p]
そんな彼だが、今回の注文のときには[r]
「誕生日のプレートは、つくのかな？」と聞いてきた。[p]
彼から要望が出るのは珍しい。[r]
でも憧れるのもわかる。[p]

[playse  storage="pop_pyoi.mp3"  ]
自分に切り分けられたケーキにプレートが載っているのをひとしきりしげしげと眺めた後、それをひーちくんのお皿に載せる。[p]

[chara_part  name="ume"  tatie="ase" ]

[chara_show name="yuu" time="100" left="420"]
[chara_show name="ume" time="100" left="130"]

[playse  storage="pin.mp3"  ]
#梅園ひーち
「いや……、俺が食べるのは違うっしょ」[p]

#
チョコプレートはひーちくんのお皿から有川さんの前に戻された。[p]

#有川イスト
[chara_part  name="yuu"  tatie="ase"  ]
「あ」[p]
[playse  storage="pop_pyoi.mp3"  ]
「……そうかもしれない」[p]

[chara_part  name="miko"  tatie="egao" ]
[chara_part  name="haru"  tatie="utagai"  ]

[chara_move  name="yuu"  left="515"  anim="false"  time="100" wait="false" ]
[chara_move name="ume" time="100" anim="false" left="240" wait="false"]
[chara_show name="miko" time="100" left="780"]
[chara_show name="haru" time="100" left="-40"]


#天野命
「あははっ、なにしてんの！」[p]
#花咲はるあきら
「ゆっかわのお誕生日なんだよー？」[p]
#有川イスト
[chara_part  name="yuu"  tatie="ase"  ]
「う、うん。もう見たから、充分だと思って……」[p]

[playse  storage="pa.mp3"  ]
[chara_part  name="yuu"  tatie="hohoemi"  ]
「このプレート、祝われてるみたいで嬉しいね」[p]
#花咲はるあきら
[chara_part  name="haru"  tatie="egao"  ]
「わかる～。いいよね」[p]

[playse  storage="pin.mp3"  ]
[chara_part  name="haru"  tatie="utagai"  ]
「そんないいものを人にあげてはいけないんだよ」[p]
#有川イスト
[chara_part  name="yuu"  tatie="ase"  ]
「……。うん。わかった」[p]
#天野命
[chara_part  name="miko"  tatie="jitome" ]
「あはは！　二回も言われてる～～」[p]

[chara_hide name="haru" time="100"]
[chara_hide name="miko" time="100"]
[chara_hide name="ume" time="100"]

#藤堂倫理
「ああ、そうだ。有川さんに渡したいものがあるんです」[p]


#有川イスト
[chara_part  name="yuu"  tatie="hutu"  ]
「……え、なんだろう」[p]

[chara_move  name="yuu"  left="650"  anim="true"  time="600"  ]

#
私が用意したのは……

[glink text="手作りクッキー" color="my_yellow" target="cookie" size="24" x="178" y="170" width="500" ]
[glink text="佑さんからの手紙" color="my_yellow" target="tegami" size="24" x="178" y="270" width="500" ]
[glink text="コーヒー豆" color="my_yellow" target="coffee" size="24" x="178" y="370" width="500" ]

[s]

;========================

;■手作りクッキー

;========================

*cookie
[cm]
;[chara_move  name="yuu"  left="390"  anim="true"  time="600"  ]
#
渡したのは手作りクッキー。[p]
抹茶とニンジンパウダーを使って、ニンジンの形にしてみた。[p]

#藤堂倫理
「みことくんと作ったんです」[p]

[chara_show name="miko" time="100" left="203"]
[playse  storage="pa.mp3"  ]
#天野命
[chara_part  name="miko"  tatie="egao" ]
「そう！　結構、自信作なの」[p]

[chara_part  name="miko"  tatie="hutu" ]

#有川イスト
[chara_part  name="yuu"  tatie="hohoemi"  ]
「わあ……。君たちが作ってくれただけで嬉しいよ。ありがとう」[p]



[chara_show name="haru" time="100" left="-40"]

[playse  storage="pa.mp3"  ]
#花咲はるあきら
[chara_part  name="haru"  tatie="nikoniko"  ]
「あら～！　クッキーのタネを２色用意するのとか、型抜きとか、[r]
地味に手間じゃない？　丁寧に作ってくれてるね！」[p]


[chara_hide name="haru" time="100"]

#有川イスト
[chara_part  name="yuu"  tatie="hohoemi"  ]
「そうなんだ。わざわざありがとう。[r]
……食べてみてもいい？」[p]
#藤堂倫理
「あ、はい。お口に合うといいんですが」[p]

[playse  storage="eat.mp3"  ]
#
有川さんは、ニンジン型クッキーをしげしげと見つめてから、ゆっくりと味わうように噛む。[p]


#有川イスト
[chara_part  name="yuu"  tatie="mehuse"  ]
「……ふふ、美味しい。ありがとう」[p]

[playse  storage="pa.mp3"  ]
#天野命
[chara_part  name="miko"  tatie="egao" ]
「よかったー！！[r]
まだまだいっぱい作ったから、いっぱい食べてね」[p]

#
みことくんが山盛りのクッキーを大皿に雪崩のように流し込む。[p]
有川さんが笑う。[p]

[playse  storage="pop_ase.mp3"  ]
#有川イスト
[chara_part  name="yuu"  tatie="ase"  ]
「……そんなに食べられないよ」[p]
[chara_part  name="yuu"  tatie="egao"  ]
「……皆でいただこうか？」[p]

[chara_config  talk_focus="none"  ]
[chara_move  name="yuu"  left="515"  anim="false"  time="100" wait="false" ]
[chara_move name="miko" time="100" left="240" anim="false"]
[chara_show name="ume" time="100"  left="780" wait="false"]
[chara_show name="haru" time="100" left="-40"]

#３人
「やった～～！」[p]

[jump  target="end"  ]

;========================

;■佑さんからの手紙

;========================

*tegami
[cm]
[chara_move  name="yuu"  left="390"  anim="true"  time="600"  ]

#藤堂倫理
「佑さんからお手紙を預かっているんです」[p]

[quake  count="3"  vmax="0"  hmax="6"  time="500"  ]
[playse  storage="pin.mp3"  ]
#有川イスト
[chara_part  name="yuu"  tatie="aseri"  ]
「きょっ、教祖様が……！　わざわざ！」[p]
「ありがとう。帰ったら読もう……」[p]


[chara_hide_all time="100"]


[chara_part  name="ume"  tatie="hutu" ]
[chara_part  name="miko"  tatie="hutu"  ]
[chara_part  name="haru"  tatie="nikoniko"  ]

[chara_show name="miko" time="100" left="750"]
[chara_show name="ume" time="100" left="370"]
[chara_show name="haru" time="100" left="10"]


#天野命
「有川さんってさ、ずっとお兄ちゃんのこと好きだよね」[p]
#花咲はるあきら
「ね～。ゆっかわと出会ったときの佑って、きっと今とは全然違ったでしょ？」[p]

[playse  storage="pop_pyoi.mp3"  ]
[chara_part  name="haru"  tatie="utagai"  ]
「昔はきっと清楚？　だったけど、[r]
今はうめち達と遊んでるときの印象もついてきちゃった？　みたいな」[p]
#梅園ひーち
[chara_part  name="ume"  tatie="ase" ]
「佑ってほんと、ふざけたやつ」[p]
[playse  storage="pop_ase.mp3"  ]
[chara_part  name="ume"  tatie="mesorasi" ]
「俺さ、ぶっちゃけ有川の前で佑と話すのちょっと気が引けるんだよ……」[p]
「いや、他の人がいる時は、２人で遊んでるときより少しまともな気がするけど……」[p]


[chara_part  name="yuu"  tatie="mesorasi"  ]
[chara_hide_all time="100"]
[chara_show name="yuu" time="100" left="390"]

#有川イスト
「うん。かなり印象は変わった」[p]
[playse  storage="pin.mp3"  ]
「笑いながら走り回ったり……そんなことをするとは思ってなくて、かなり驚いたよ」[p]

[chara_part  name="ume"  tatie="ase" ]
[chara_show name="ume" time="100" left="0"]

[playse  storage="pop_pyoi.mp3"  ]
#梅園ひーち
「なんかごめん」[p]

#有川イスト
[chara_part  name="yuu"  tatie="mehuse"  ]
「でも、一番尊敬しているところは変わらないし」[p]
「僕のことを助けてくださったあの方が、なにも背負うことなく、自然体でいられるなら、それが一番なんだ」[p]


#梅園ひーち
[chara_part  name="ume"  tatie="egao" ]
「ふうん……」[p]
[chara_part  name="ume"  tatie="nikori" ]
「じゃー、ま、いっか」[p]

#有川イスト
[chara_part  name="yuu"  tatie="mehuse"  ]
「うん。これからも、ふたり仲良くね」[p]

#梅園ひーち
[playse  storage="pa.mp3"  ]
[chara_part  name="ume"  tatie="nikoniko" ]
「うん」[p]


[jump  target="end"  ]

;========================

;■コーヒー豆

;========================

*coffee
[cm]
[chara_move  name="yuu"  left="390"  anim="true"  time="600"  ]

#
台所の戸棚から、隠していたプレゼントを引き出す。[p]
樫木県から輸入されてきた深煎りのコーヒー豆。いいやつだ。[p]

#藤堂倫理
「確か、おうちにも道具がありましたよね？」[p]

#
有川さんの家は本とテレビとアニメDVD以外に嗜好品と呼べるものが少ない。[p]
なんなら料理もしないので、果物ナイフとボウルくらいしかない……[r]
にも関わらず、コーヒーセットはあるのが印象的で、ずっと覚えていた。[p]

#有川イスト
[playse  storage="pa.mp3"  ]
[chara_part  name="yuu"  tatie="hohoemi"  ]
「わ、ありがとう。これ、みんなでいただいてもいい？[r]
僕、淹れるよ」[p]

#藤堂倫理
[playse  storage="pop_ase.mp3"  ]
「あっ、そんな、今日の主役が」[p]
「いやでも、私が淹れるよりはお上手だし、そのほうがいいか」[p]
「有川さん、コーヒーお好きですもんね……」[p]

#有川イスト
[playse  storage="pin.mp3"  ]
[chara_part  name="yuu"  tatie="hutu"  ]
「え」[p]

#藤堂倫理
[playse  storage="pop_ase.mp3"  ]
「……え」[p]

#有川イスト
[chara_part  name="yuu"  tatie="hutu"  ]
「え？」[p]

#藤堂倫理
「え」[p]

#有川イスト
[playse  storage="manuke.mp3"  ]
[chara_part  name="yuu"  tatie="hutu"  ]
「僕、コーヒー好きなのかな」[p]

#藤堂倫理
「え？？」[p]


[chara_part  name="haru"  tatie="odoroki"  ]
[chara_part  name="ume"  tatie="odoroki" ]
[chara_part  name="miko"  tatie="nakiwarai"  ]

[chara_move name="yuu" time="50" left="515" wait="false"]
[chara_show name="haru" time="50" left="-40" wait="false"]
[chara_show name="ume" time="50" left="240" wait="false"]
[chara_show name="miko" time="50" left="770" ]


[playse  storage="doon.mp3"  ]
[quake  count="2"  vmax="0"  hmax="3"  time="500"  ]
#梅園ひーち
「え？？？？？」[p]
[quake  count="2"  vmax="0"  hmax="3"  time="500"  ]
#花咲はるあきら
「え？　好きじゃないの？」[p]
[quake  count="2"  vmax="0"  hmax="3"  time="500"  ]
#天野命
「えっ、……え～～？？？　まじで言ってる～～？」[p]
「でもでも、ずーーーっとコーヒー飲むじゃん！」[p]

#有川イスト
[chara_part  name="yuu"  tatie="hutu"  ]
「コーヒーがあるから飲んでいるだけだよ」[p]
[chara_part  name="yuu"  tatie="mesorasi"  ]
「教祖様が昔、コーヒーを淹れてくださったのが嬉しくて、つい」[p]
「つい選んでしまうから、人に聞かれたら『好き』とは言うけれど……」[p]

[quake  count="2"  vmax="0"  hmax="3"  time="500"  ]
#花咲はるあきら
[chara_part  name="haru"  tatie="odoroki"  ]
「へえええ……！？　じゃあなんで道具がおうちにあるの！？」[p]

#有川イスト
[chara_part  name="yuu"  tatie="mesorasi"  ]
「……昔は教会に来ると、教祖様が淹れてくださったんだ」[p]
[chara_part  name="miko"  tatie="magao"  ]
「でも僕のためにお手を煩わせるのも嫌だし……。[r]
お役に立ちたいのもあって練習していただけで」[p]
「思い出深くて、ずっとコーヒーを選んでいるだけで……」[p]
「嗜好品として好きかどうかはよくわからない」[p]
「味のあるカフェインだと……」[p]
[chara_part  name="yuu"  tatie="hohoemi"  ]
[playse  storage="pa.mp3"  ]
「あ……。藤堂くん、プレゼントありがとう。[r]
選んでくれたのは本当に嬉しい。覚えていてくれたことも」[p]
#藤堂倫理
「え、や、いえ」[p]

[chara_hide_all time="100"]
[free_filter  ]

[bg storage="1.png" time="500"]


#花咲はるあきら
[playse  storage="pop_ase.mp3"  ]
[chara_part  name="haru"  tatie="hutu"  ]
「え、で、でも、嫌じゃないんだよね！？」[p]

#有川イスト
[chara_part  name="yuu"  tatie="hutu"  ]
「嫌じゃないよ」[p]

#花咲はるあきら
[playse  storage="pa.mp3"  ]
[chara_part  name="haru"  tatie="hutu"  ]
「そ、そうだよね。いつもカフェでコーヒー頼んでるもんね」[p]

#梅園ひーち
[playse  storage="manuke.mp3"  ]
[chara_part  name="ume"  tatie="ase" ]
「……そ～～いえば、[r]
昔ちらっと言ってた気もするな……」[p]

#天野命
[playse  storage="pin.mp3"  ]
[chara_part  name="miko"  tatie="egao"  ]
「えー、有川さんめっちゃ愛じゃんねっ！」[p]
[playse  storage="pa.mp3"  ]
「だからかなー？[r]
僕ね、有川さんに淹れてもらうコーヒー好きーっ！」[p]

#
ひーちくんと花咲さんもうなずく。[p]


[bg storage="2.png" time="500"]

#有川イスト
[chara_part  name="yuu"  tatie="hohoemi"  ]
「……ふふ」[p]
「なら、少し待っていてね。お湯を沸かすから」[p]
#有川イスト
[chara_part  name="yuu"  tatie="mehuse"  ]
「ありがとう、藤堂くん」[p]
「いい誕生日になったよ」[p]

[wait time="500"]

[jump  target="end"  ]


;=======================
;=======================
;=======================


*end

[chara_hide_all time="100"]
#
[free_filter  ]

@layopt layer="message0" visible="false"

[anim_role_button_hide]

[bg storage=kuro.jpg time=1000w]

[jump storage="EDroll.ks" ]
