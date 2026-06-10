/*
ティラノビルダープラグイン開発用のテンプレート
まず、このファイルを編集してプラグイン開発を試してみると良いでしょう。
*/

'use strict';
module.exports = class plugin_setting {

    constructor(TB) {

        /* TBはティラノビルダーの機能にアクセスするためのインターフェスを提供する */
        this.TB = TB;

        /* プラグイン名を格納する */
        this.name= TB.$.s("キャラ名表示欄拡張プラグイン");

        /*プラグインの説明文を格納する*/
        this.plugin_text= TB.$.s("キャラ名表示欄を拡張するプラグインです。");

        /*プラグイン説明用の画像ファイルを指定する。プラグインフォルダに配置してください*/
        this.plugin_img = "image.png";

    }


    /* プラグインをインストールを実行した時１度だけ走ります。フォルダのコピーなどにご活用ください。*/
    triggerInstall(){

        /*
        //プラグインからプロジェクトにファイルをコピーするサンプルです
        var project_path = TB.getProjectPath() ;
        var from_path = project_path + "data/others/plugin/plugin_template/copy_folder";
        var to_path = project_path + "data/image/copy_folder";
        TB.io.copy(from_path,to_path);
        */

    }

    /*
    追加するコンポーネントを定義します。
    */

    defineComponents(){

        var cmp = {};
        var TB = this.TB;

        //=======================================================
        //  charaname
        //=======================================================

        cmp["charaname"] = {

            "info": {
                "default": true,
                "name": TB.$.s("キャラ名表示欄設定"),
                "help": TB.$.s("キャラ名表示欄を設定します"),
                "icon": TB.$.s("s-icon-star-full"),
            },

            "component": {

                name: TB.$.s("キャラ名表示欄設定"),
                component_type: "Simple",  /* Simple Movie Image Text Sound */

                header: function(obj) {
                },

                default_view: {
                    base_img_url: "data/others/plugin/charaname/image/",
                    icon: "s-icon-star-full",
                    icon_color: "#FFFF99",
                    category: "plugin",
                },

                param_view: {},

                param: {

                    "type": {
                        type: "Select",
                        name: TB.$.s("表示タイプ"),
                        select_list: [{
                            name: TB.$.s("テキスト"),
                            val: "text"
                        }, {
                            name: TB.$.s("画像"),
                            val: "image"
                        },],

                        default_val: "text",
                        vital: false,
                        help: TB.$.s("表示タイプを指定します"),
                    },

                    "pos": {
                        type: "Select",
                        name: TB.$.s("テキスト位置"),
                        select_list: [{
                            name: TB.$.s("中央"),
                            val: "center"
                        }, {
                            name: TB.$.s("右"),
                            val: "right"
                        }, {
                            name: TB.$.s("左"),
                            val: "left"
                        },],

                        default_val: "center",
                        vital: false,
                        help: TB.$.s("テキスト位置を指定します"),
                    },

                    "width" : {
                        type: "Num",
                        name: "幅",
                        unit: "px",
                        help: TB.$.s("画像の幅を指定します"),

                        default_val: 0,
                        vital: false,

                        spinner: {
                            min: 0,
                            max: 5000,
                            step: 10,
                        },

                        validate: {
                            number: true,
                        }
                    },

                    "height" : {
                        type: "Num",
                        name: "高さ",
                        unit: "px",
                        help: TB.$.s("画像の高さを指定します"),

                        default_val: 0,
                        vital: false,

                        spinner: {
                            min: 0,
                            max: 5000,
                            step: 10,
                        },

                        validate: {
                            number: true,
                        }
                    },

                    "x": {
                        type: "Num",
                        name: "横位置",
                        unit: "px",
                        help: TB.$.s("画面左端からの位置を指定します"),

                        default_val: 0,
                        vital: false,

                        spinner: {
                            min: 0,
                            max: 5000,
                            step: 10,
                        },

                        validate: {
                            number: true,
                        }
                    },

                    "y": {
                        type: "Num",
                        name: "縦位置",
                        unit: "px",
                        help: TB.$.s("画面上端からの位置を指定します"),

                        default_val: 0,
                        vital: false,

                        spinner: {
                            min: 0,
                            max: 5000,
                            step: 10,
                        },

                        validate: {
                            number: true,
                        }
                    },

                    "bgimage": {
                        type: "ImageSelect",
                        file_path: "others/plugin/charaname/image/",
                        base_img_url: "data/others/plugin/charaname/image/",
                        name: TB.$.s("背景画像"),
                        help: TB.$.s("背景画像を指定します"),
                        vital: false,
                        default_val: "",
                        line_preview: "on",
                        validate: {
                            required: true
                        }
                    },

                    _bound_select : {
                        type : "BoundSelectPlugin",
                        bound_type : "plugin",
                        file_path : "bgimage/",
                        name : TB.$.s("領域選択"),
                        help : TB.$.s("座標を見やすいツールを使って指定することができます"),
                        vital : false,
                        default_val : "",

                        drag_obj:function(pm){
                            var project_path = TB.getProjectPath();
                            var img_path = project_path + "data/others/plugin/charaname/image/"+ pm.img;
                            var html = '<img style="position:relative;width:100%;height:100%" src="'+ img_path +'">';
                            var j_obj = TB.$(html);

                            return j_obj
                        },
                    },

                    "bgcolor": {
                        type: "Color",
                        name: TB.$.s("背景色"),
                        default_val: "0x000000",
                        vital: false,
                        validate: {
                            required: true
                        }
                    },

                    "opacity" : {
                        type: "Num",
                        name: "不透明度",
                        unit: "",
                        help: TB.$.s("背景の不透明度を指定します"),

                        default_val: 255,
                        vital: false,

                        spinner: {
                            min: 0,
                            max: 255,
                            step: 1,
                        },

                        validate: {
                            number: true,
                        }
                    },

                    "marginl" : {
                        type: "Num",
                        name: "左余白",
                        unit: "px",
                        help: TB.$.s("左の余白を指定します"),

                        default_val: 0,
                        vital: false,

                        spinner: {
                            min: 0,
                            max: 5000,
                            step: 1,
                        },

                        validate: {
                            number: true,
                        }
                    },

                    "margint" : {
                        type: "Num",
                        name: "上余白",
                        unit: "px",
                        help: TB.$.s("上の余白を指定します"),

                        default_val: 0,
                        vital: false,

                        spinner: {
                            min: 0,
                            max: 5000,
                            step: 1,
                        },

                        validate: {
                            number: true,
                        }
                    },

                    "marginb" : {
                        type: "Num",
                        name: "下余白",
                        unit: "px",
                        help: TB.$.s("下の余白を指定します"),

                        default_val: 0,
                        vital: false,

                        spinner: {
                            min: 0,
                            max: 5000,
                            step: 1,
                        },

                        validate: {
                            number: true,
                        }
                    },

                    "time" : {
                        type: "Num",
                        name: "時間",
                        unit: "ﾐﾘ秒",
                        help: TB.$.s("表示にかける時間を指定します"),

                        default_val: 0,
                        vital: false,

                        spinner: {
                            min: 0,
                            max: 5000,
                            step: 10,
                        },

                        validate: {
                            number: true,
                        }
                    },

                },
            },
        };

        cmp["charaname_font"] = {

            "info": {
                "default": true,
                "name": TB.$.s("キャラ名表示欄フォント"),
                "help": TB.$.s("キャラ名表示欄のフォントを設定します"),
                "icon": TB.$.s("s-icon-star-full"),
            },

            "component": {

                name: TB.$.s("キャラ名表示欄フォント"),
                component_type: "Simple",  /* Simple Movie Image Text Sound */

                header: function(obj) {
                },

                default_view: {
                    base_img_url: "data/others/plugin/charaname/image/",
                    icon: "s-icon-star-full",
                    icon_color: "#FFFF99",
                    category: "plugin",
                },

                param_view: {},

                param: {

                    "color" : {
                        type : "Color",
                        name : TB.$.s("色"),
                        default_val : "0xFFFFFF",
                        validate : {
                            required : true
                        }
                    },

                    "size" : {
                        type: "Num",
                        name: "サイズ",
                        unit: "px",
                        help: TB.$.s("フォントのサイズを指定します"),

                        default_val: 26,
                        vital: false,

                        spinner: {
                            min: 0,
                            max: 100,
                            step: 1,
                        },

                        validate: {
                            number: true,
                        }
                    },

                    "bold": {
                        type: "Select",
                        name: TB.$.s("太字"),
                        select_list: [{
                            name: TB.$.s("する"),
                            val: "true"
                        }, {
                            name: TB.$.s("しない"),
                            val: "false"
                        },],

                        default_val: "false",
                        vital: false,
                        help: TB.$.s("太字にするかを指定します"),
                    },

                    "pitch" : {
                        type: "Num",
                        name: "字間",
                        unit: "px",
                        help: TB.$.s("字間を指定します"),

                        default_val: 0,
                        vital: false,

                        spinner: {
                            min: 0,
                            max: 100,
                            step: 1,
                        },

                        validate: {
                            number: true,
                        }
                    },

                },
            },
        };
        //
        // cmp["charaname_hide"] = {
        //
        //     "info": {
        //         "default": true,
        //         "name": TB.$.s("キャラ名表示欄を消去します"),
        //         "help": TB.$.s("キャラ名表示欄を消去します"),
        //         "icon": TB.$.s("s-icon-star-full"),
        //     },
        //
        //     "component": {
        //
        //         name: TB.$.s("キャラ名表示欄を消去します"),
        //         component_type: "Simple",  /* Simple Movie Image Text Sound */
        //
        //         header: function(obj) {
        //         },
        //
        //         default_view: {
        //             base_img_url: "data/others/plugin/charaname/image/",
        //             icon: "s-icon-star-full",
        //             icon_color: "#FFFF99",
        //             category: "plugin",
        //         },
        //
        //         param_view: {},
        //
        //         param: {},
        //     },
        // };

        return cmp;
    }

    test(){}
}
