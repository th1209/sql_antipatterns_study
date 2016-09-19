##### このリポジトリについて

* 書籍『SQLアンチパターン』の勉強用リポジトリ。
* 各章に対応したDBを仮想マシン上で再現。


##### 環境構築

* 以下コンポーネントが入っていないようならインストールする。
  * php, composer, vagrant, virtualbox
* homesteadをインストールする。プロジェクト以下で、以下コマンドを叩く
  * `composer require laravel/homestead --dev`
* 各章と対応するDBを作成する。以下のようにする。
  * `php artisan cache:clear`
  * `shellscript/make_all_db.sh`を叩く
  * (各DBに対し、`php artisan migrate:install --database=DB名`とコマンド実行する必要があるかも)
* `php artisan migrate`と打てば、全DBにテーブル定義とダミーデータがマイグレーションされる


##### DBの確認方法

* `vagrant up`すると仮想マシンが立ち上がる
* `vagrant ssh`でssh接続
* `mysql -u homestead -psectet`でmysqlにログイン
