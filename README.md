概要
======================
SayKotoeriを使って喋らせるためのEmacsのマイナーモード。
Mac OS X専用。

依存関係
-------------
- SayKana(http://www.a-quest.com/quickware/saykana/)
- SayKotoeri(https://sites.google.com/site/nicohemus/home/saykotoeri)

インストール
------------
saykotoeri.el をload-pathが通っているところに置いて

    (require 'saykotoeri)

使い方
------

    M-x saykotoeri-mode

を実行することによりsaykotoeriマイナーモードが有効になります。

saykotoeri マイナーモードが有効な時にリージョンを選択して

    M-x saykotoeri-region

を実行すると
リージョン内の文字をSayKotoeriコマンドが読み上げます。


ライセンス
----------
&copy; 2013  Mugijiru. This project is licensed under the MIT license. See LICENSE for details.
