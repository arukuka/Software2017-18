SamurAI Jockey ゲーム用ソフトウェアについて

                                                            2017/09/30

このディレクトリには SamurAI Coding 2017-2018 で用いるために準備中の
SamurAI Jockey ゲーム用のソフトウェアが入っています。

1. ディレクトリ構成

トップレベルにはこの README-jp.txt の他に下記のサブディレクトリがあります。
  documents:
    ゲームのルールやデータファイルの形式についての文書が入っています。
  official:
    レースの実行管理システムが入っています。
  viewer:
    レースのログをビジュアライズするビューワのソフトウェアが入っています。
  editor:
    ゲームに用いるコースを編集するためのソフトウェアが入っています。
  player:
    ゲームを競うプレイヤソフトウェアのサンプルが入っています。
  samples:
    レースコースやレースのログのサンプルが入っています。

2. サンプルレースを見るには

viewer/viewer.html をブラウザで開きます。
左上端の Load Log ボタンを押すとダイアログが表示されますので、
ここでこのディレクトリ中の samples/sample.racelog を選んでください。
"Start" ボタンを押すとレースの進行を見ることができます。
詳しい使い方については "Help" ボタンを押してマニュアルページを見てください。

3. 文書

documents ディレクトリには以下の文書が入っています。

  rule-jp.pdf: ゲームのルール案
  rule-en.pdf: ゲームのルール案 (英語版)
  datafiles.pdf: 情報交換に用いるファイルの形式

4. インストール

実行管理システムとサンプルプレイヤについては、各ディレクトリで make を走らせてください。
インストールには C++11 対応の C++ 言語システムと boost ライブラリが必要です。

ビューワとエディタについては特段のインストールは不要で、
Javascript を利用できるウェブブラウザーならすぐ実行できます。

5. 使い方

(1) 実行管理システム

コマンドラインに以下のように引数を指定します。
　　./official <course file> <player0> <name0> <player1> <name1> [ <log0> <log1> ]
各引数は以下のとおりです。

  <course file>:
    レースで用いる形式のコース記述ファイル。
    通常 editor でコースを設計して、Write で書き出したものです。
    サンプルが sample/sample-course.smrjky にあります。
  <player0>, <player1>:
    レースを競う AI プログラムの実行可能形式ファイルのパス名です。
    player ディレクトリで make すれば、サンプルが player/greedy にできます。
  <name0>, <name1>:
    Viewer の表示に使う AI プログラムの名前の文字列です。
  <log0>, <log1>
    これらのパス名を指定すると、AI プログラムに送ったデータのコピーを格納します。
    これらを AI プレイヤの入力とすれば、デバッグに便利でしょう。

(2) コース編集ソフトウェア

  editor/editor.html をブラウザで開きます。
  右上端の Help ボタンを押して編集方法の詳細をご覧ください。

(3) レースビューワ

  viewer/viewer.html をブラウザで開きます。
  右上端の Help ボタンを押して使い方の詳細をご覧ください。

6. 既知のバグ・未実装機能

- AI プログラムの実行についての制限が未実装
  - 考慮時間の管理はまだ実装していません。
  - ファイルやネットワークへのアクセスを制限していません。

以上
