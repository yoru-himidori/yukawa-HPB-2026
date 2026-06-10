;一番最初に呼び出されるファイル

[stop_keyconfig]


;ティラノスクリプトが標準で用意している便利なライブラリ群
;コンフィグ、CG、回想モードを使う場合は必須
@call storage="tyrano.ks"

;ゲームで必ず必要な初期化処理はこのファイルに記述するのがオススメ

;メッセージボックスは非表示
@layopt layer="message" visible=false

;最初は右下のメニューボタンを非表示にする
[hidemenubutton]


;[glink_config  auto_place="true"  width="max"  place_area="auto" vertical="center" ]

;======================
;プラグイン呼び出し
;======================]

;キャラクターネーム
[plugin name="charaname"]	
[charaname type="text" bgimage="frame.png" width="416" height="39" x="200" y="520" margint="2" pos="center"]							
[charaname_font color="0xffffff" size="24" bold="false" pitch="5"]		

;バックログプラグイン
[plugin name="backlog"]
[call storage="backlog.ks"]

;モーダルウィンドウCSS変更
[loadcss file="./data/others/css/mystyle.css"]




;======================
;ロールボタン配置マクロ
;======================

[macro name="anim_role_button_visible"]

[anim  name="role_button"  top="680" time="0" ]
[anim  name="role_button2" top="521" time="0"]
;[anim  name="title_button" top="2000" time="0"]

[endmacro]

;======================
;ロールボタン非表示マクロ
;======================

[macro name="anim_role_button_hide"]

[anim  name="role_button"  top="2000" time="0" ]
[anim  name="role_button2" top="2000" time="0"]
;[anim  name="title_button" top="2000" time="0"]

[endmacro]


;======================
;アイキャッチマクロ
;======================


[macro name="eyecatch"]

;ロールボタン非表示にする
[anim  name="role_button"  top="2000" time="0" ]
[anim  name="role_button2" top="2000" time="0"]

;ウィンドウ非表示
[layopt layer="0" visible="true"]

;アイキャッチ表示
[bg storage="kuro.jpg" time="500"]
[mask time="500" graphic="eyecatch.png"]
[wait time="2000" ]
[mask_off time="500"]

;BGM鳴らしたり
[bg storage="%storage" time="500" ]
[playbgm storage="%bgm" ]

;ウィンドウ表示
[layopt layer="0" visible="false"]

;ロールボタン再配置する
[anim  name="role_button"  top="680" time="0" ]
[anim  name="role_button2" top="521" time="0"]

[endmacro]


;======================
;キャラクター読み込み
;======================

;有川イスト===============
[chara_new name="yuu" jname="有川イスト" storage="_chara/yuu/transparent.png" ]

;tatie
[chara_layer  name="yuu"  part="tatie"  id="ase"  storage="_chara/yuu/tatie/ase.png"  zindex="1"  ]
[chara_layer  name="yuu"  part="tatie"  id="aseri"  storage="_chara/yuu/tatie/aseri.png"  zindex="1"  ]
[chara_layer  name="yuu"  part="tatie"  id="egao"  storage="_chara/yuu/tatie/egao.png"  zindex="1"  ]
[chara_layer  name="yuu"  part="tatie"  id="hohoemi"  storage="_chara/yuu/tatie/hohoemi.png"  zindex="1"  ]
[chara_layer  name="yuu"  part="tatie"  id="hutu"  storage="_chara/yuu/tatie/hutu.png"  zindex="1"  ]
[chara_layer  name="yuu"  part="tatie"  id="mehuse"  storage="_chara/yuu/tatie/mehuse.png"  zindex="1"  ]
[chara_layer  name="yuu"  part="tatie"  id="mesorasi"  storage="_chara/yuu/tatie/mesorasi.png"  zindex="1"  ]
[chara_layer  name="yuu"  part="tatie"  id="none"  storage="none"  zindex="1"  ]





;天野命===============
[chara_new name="miko" jname="天野命" storage="_chara/miko/transparent.png" ]

;tatie
[chara_layer  name="miko"  part="tatie"  id="egao"  storage="_chara/miko/tatie/egao.png"  zindex="1"  ]
[chara_layer  name="miko"  part="tatie"  id="hutu"  storage="_chara/miko/tatie/hutu.png"  zindex="1"  ]
[chara_layer  name="miko"  part="tatie"  id="jitome"  storage="_chara/miko/tatie/jitome.png"  zindex="1"  ]
[chara_layer  name="miko"  part="tatie"  id="magao"  storage="_chara/miko/tatie/magao.png"  zindex="1"  ]
[chara_layer  name="miko"  part="tatie"  id="nakiwarai"  storage="_chara/miko/tatie/nakiwarai.png"  zindex="1"  ]
[chara_layer  name="miko"  part="tatie"  id="none"  storage="none"  zindex="1"  ]





;花咲はるあきら===============
[chara_new name="haru" jname="花咲はるあきら" storage="_chara/haru/transparent.png" ]

;tatie
[chara_layer  name="haru"  part="tatie"  id="hohoemi"  storage="_chara/haru/tatie/hohoemi.png"  zindex="1"  ]
[chara_layer  name="haru"  part="tatie"  id="hutu"  storage="_chara/haru/tatie/hutu.png"  zindex="1"  ]
[chara_layer  name="haru"  part="tatie"  id="nikoniko"  storage="_chara/haru/tatie/nikoniko.png"  zindex="1"  ]
[chara_layer  name="haru"  part="tatie"  id="odoroki"  storage="_chara/haru/tatie/odoroki.png"  zindex="1"  ]
[chara_layer  name="haru"  part="tatie"  id="utagai"  storage="_chara/haru/tatie/utagai.png"  zindex="1"  ]
[chara_layer  name="haru"  part="tatie"  id="none"  storage="none"  zindex="1"  ]




;梅園ひーち===============
[chara_new name="ume" jname="梅園ひーち" storage="_chara/ume/transparent.png" ]

;tatie
[chara_layer  name="ume"  part="tatie"  id="ase"  storage="_chara/ume/tatie/ase.png"  zindex="1"  ]
[chara_layer  name="ume"  part="tatie"  id="egao"  storage="_chara/ume/tatie/egao.png"  zindex="1"  ]
[chara_layer  name="ume"  part="tatie"  id="hutu"  storage="_chara/ume/tatie/hutu.png"  zindex="1"  ]
[chara_layer  name="ume"  part="tatie"  id="mesorasi"  storage="_chara/ume/tatie/mesorasi.png"  zindex="1"  ]
[chara_layer  name="ume"  part="tatie"  id="nikoniko"  storage="_chara/ume/tatie/nikoniko.png"  zindex="1"  ]
[chara_layer  name="ume"  part="tatie"  id="odoroki"  storage="_chara/ume/tatie/odoroki.png"  zindex="1"  ]
[chara_layer  name="ume"  part="tatie"  id="none"  storage="none"  zindex="1"  ]










;ティラノスクリプトが標準で用意している便利なライブラリ群
;コンフィグ、CG、回想モードを使う場合は必須
@call storage="tyrano.ks"

;ゲームで必ず必要な初期化処理はこのファイルに記述するのがオススメ

;メッセージボックスは非表示
@layopt layer="message" visible=false

;最初は右下のメニューボタンを非表示にする
[hidemenubutton]

;タイトル画面へ移動
@jump storage="scene1.ks"

[s]


