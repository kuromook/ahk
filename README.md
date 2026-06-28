# AutoHotkey

Windows と制作アプリ向けの個人用 AutoHotkey 設定です。中心は
`windows11.ahk` で、共通ホットキー、Clip Studio Paint 用マクロ、
Photoshop 用ショートカット、JoyToKey 設定をまとめています。

## エントリポイント

- `windows11.ahk`: メインスクリプト。共通キー設定と各モジュールを読み込みます。
- `ime_control.ahk`: 外部 IME ライブラリの代わりに使う最小 IME 制御ヘルパーです。
- `app.ahk`: Emacs / Firefox などアプリ別の補助ショートカットです。
- `photoshop.ahk`: Photoshop 向けのショートカット補助です。
- `numpadFunc.ahk`: テンキーから `Ctrl+Shift+Alt+F1` から `F12` を送る補助です。

## Clip Studio Paint

`csp/` に Clip Studio Paint 用の mode / flow / pad key 系スクリプトがあります。
`windows11.ahk` から `csp/csPaint.ahk` を読み込み、CSP のウィンドウがアクティブな時だけ
関連ホットキーが有効になります。

主な構成:

- `csp/csPaint.ahk`: CSP 用 include の入口とコンテキスト条件です。
- `csp/csPaint_main.ahk`: CSP 全体で使う主要操作です。
- `csp/csPaint_mode.ahk`: mode 切り替えです。
- `csp/csPaint_flow.ahk` / `csp/csPaint_flowPaint.ahk`: flow 切り替えと表示です。
- `csp/csPaint_padkey*.ahk`: mode ごとのパッド入力受け取りです。
- `csp/flow.json`: flow 定義データです。

古い CSP スクリプトは `csp/_unused/` に退避していますが、`_unused/` は git では追跡しません。

## JoyToKey

JoyToKey の設定は `JoyToKey692/` にあります。実行ファイルやログは ignore し、
設定ファイルだけを管理します。

管理対象:

- `JoyToKey692/AppLink.dat`
- `JoyToKey692/JoyToKey.ini`
- `JoyToKey692/clipstudiopaint.cfg`
- `JoyToKey692/pc88.cfg`
- `JoyToKey692/th.cfg`

キー割り当ての詳細は `doc/joytokey-keymap.md` を参照してください。

## 外部依存

- `AutoHotkey-JSON/JSON.ahk`: `csp/csPaint_func.ahk` の `JSON.parse()` で使用します。

過去に使っていた `IME/`, `TT/`, `_Struct/`, `Lib/` は現在の active script からは外しており、
必要なものだけを project-owned な実装に置き換えています。

## ドキュメント

ドキュメントは `doc/` に集約しています。

- `doc/joytokey-keymap.md`: JoyToKey と AHK 側の対応表です。
- `doc/work_log.md`: 直近の整理履歴です。

## ローカル退避領域

`_unused/` と各階層の `_unused/` はローカル退避用です。git では追跡しません。
