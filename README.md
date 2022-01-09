# Autohotkey


  
windowsの操作をラップします　ほとんどクリスタ用  
+ windows10.ahk windows 操作のラップ（ほとんどの人が関心ありそうなやつ)
+ numpadfunc.ahk テンキーでファンクションキーショートカットを押させる
+ app.ahk その他のアプリケーション用
+ csp クリスタの機能強化 (整理できてませんのであくまで解説・公開のみ)


### clip studio paint mode/flow概要(csp以下)
#### 要ライブラリ
IME (https://github.com/karakaram/alt-ime-ahk) . 
TT (https://github.com/HotKeyIt/TT) . 
_struct(https://github.com/HotKeyIt/_Struct) . 
Autohotkey-json  (https://github.com/cocobelgica/AutoHotkey-JSON) . 

#### 作成の経緯
クリスタの機能として、ワークスペースがあります  
ワークスペースは、各ワークスペースごとにショートカットやウィンドウレイアウトが保存できます  
しかし、修飾キー(modifier key)は全ワークスペース共通であり、ショートカットバインドに制限が多くあります  
また、各ワークスペースごとに部分的にショートカット群の切り替えや継承もできません  
mode/flowはそれらの問題を解決するためのものです  

（注意）ほとんど個人的なものとしてできています、整理できていません
その内、他の人と共用できる形にまとめたいとは思っていますが、参考までに

mode :ワークスペースにぶら下がる形で設定するショートカット・マクロ群  
flow :左手デバイスの数ボタンに限定して、さらに細かく分化したショートカット・マクロ群  

### workspace とmode、flowの関係
+ paint workspace
  - paint mode（彩色）
    + default flow (彩色)
    + mask (マスク、マスクモードとほぼ同等)
    + sketch (ラフ・ラフモードとほぼ同等)
    + high light (ハイライト彩色用)
  - rough mode(ラフ）
+ line work space
  - line mode(線画・モノクロ漫画)
    + default flow (線画)
    + white flow （ホワイト)
    + mask flow (クイックマスク)
    + effect flow (効果・書き文字)
    + fukidashi flow (吹き出し)
    + tone flow （トーン彩色)
+ mask workspace
  - base mode (色分け)
    + base flow (色分け)
    + sub flow (色分け彩色)

#### その他
csp/csPaint_layerRenamer.ahk live2D/spine等レイヤが爆増した場合の対処用  
csp/csPaint_textShortInput.ahk ハートなどの特殊記号入力補助
