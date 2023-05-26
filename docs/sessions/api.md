# Github APIでデータを取得する

## セットアップ

以下のプラグインをAndroidStudioにインストールします。
- [Flutter Freezed Snippets](https://plugins.jetbrains.com/plugin/18258-flutter-freezed-snippets)
- [Flutter Riverpod Snippets](https://plugins.jetbrains.com/plugin/14641-flutter-riverpod-snippets)

面倒なボイラープレートの記述がだいぶ楽になるので、活用しましょう。

## 課題
Github上のリポジトリをキーワード検索で取得し、リスト表示します。
リストアイテムにはそれぞれ名前・簡単な説明・スター数を表示します。

以下のプラグインを使って、

`https://api.github.com/search/repositories?q=flutter`

で取得できるデータを100件を上限に表示してください。

- 状態管理: [riverpod](https://riverpod.dev/)
- HTTPリクエスト: [dio](https://pub.dev/packages/dio)
- エンティティクラスの生成: [freezed](https://pub.dev/packages/freezed) 

[riverpod_generator](https://pub.dev/packages/riverpod_generator)は使用してもしなくてもどちらでもOKです。

## 参考

`fvm flutter pub run build_runner build`と何度もコマンドを打つのが面倒なときは、IDEにコマンドを保存して実行しましょう。
保存したコマンド設定ファイルをGitに含めることも可能です。

[GitHub Search API](https://docs.github.com/ja/rest/search?apiVersion=2022-11-28#search-repositories
https://api.github.com/search/repositories?q=%5Bquery%5D)