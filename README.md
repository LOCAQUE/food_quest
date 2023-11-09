# 導入

**install flutter**

```bash
# if you don't have plugins
asdf plugin add flutter
asdf plugin add dart

asdf install
make setup
```

**install xcodes**

xcodes とは、Xcode のバージョン管理ツールです。(一旦これしないでビルドしてみてください)

```bash
brew install xcodesorg/made/xcodes
xcodes install
```

**install packages**

```bash

flutter pub run import_sorter:main
flutter pub add dev:very_good_analysis

# only MacOS
brew install FlutterGen/tap/fluttergen
# end

dart pub global activate flutter_gen


```

# GithubActions

.github->workflow の中に ios 自動ビルド android 自動ビルド リントテスト の三つの actions を設定しました。
発火タイミングはプルリクエストやプルリクエストにコミットした時です。

# 使用方法

Makefile を使用しているので、以下のコマンドを実行することで、必要なコマンドを実行できます。

## 実装後、make format を必ずかけること。

```bash
# example
# flutter clean
make clean

# commit前は必ずformatをかける
make format

# freezedやassetsやcolorを追加した際
make builder

```

# ディレクトリ構成

```
.
├── domain
│   ├── application (infrastructureに依存し、独自の処理を記述する)
│   │   ├── my_quest
│   │   │   ├── notifier (取得、stateを変更させる処理のみを書く)
│   │   │   │   ├── my_quest_notifier.dart
│   │   │   └── usecase (notifierで取得したデータを色々いじれる場所 UIからはusecaseを呼び出す)
│   ├── entity (データのモデル)
│   │   ├── answer.dart
│   └── repositories (抽象クラス)
│       └── api_repository.dart
├── foundation
│   └── supabase_client_provider.dart
├── gen
│   ├── assets.gen.dart
│   └── colors.gen.dart
├── infrastructure (APIなど外部DBなどの実行ファイル)
│   ├── data (ネットワークを使用する)
│   │   └── supabase_api_repository_impl.dart
│   └── local (ローカル)
├── presentation
│   ├── component
│   │   ├── button.dart
│   └── screen
│       ├── quest_screen
│       │   ├── component
│       │   │   └── task_component.dart
│       │   ├── quest_list_screen
│       │   │   └── quest_screen.dart
│       └── top.dart
├── routes　(app_router)
│   ├── app_router.dart
├── app.dart
├── main.dart
└── theme.dart
```

## .env ファイルを tenpei-peso からもらってください。

.env に外部に流出してはいけない情報を記入しているので gitignore しています。

# 実装方針
### APIを使用した処理の記述方法
1. repositoryに関数名を記述
2. infrastructureに実際の処理を記述
3. 2で記述した処理をnotifierでref.watchで受け取る。
4. riverpod_generatorを使用し、providerを自動作成
5. UIで作成したproviderを受け取る
6. 非同期処理やstreamの返り値を持つproviderはasyncValueとなり、whenなどが使える
7. whenを使用しUIを構築する

### 画面遷移について
https://zenn.dev/flutteruniv_dev/articles/20230427-095829-flutter-auto-route#%E3%82%82%E3%81%A3%E3%81%A8-auto_route-%E3%82%92%E6%B4%BB%E7%94%A8%E3%81%97%E3%81%9F%E3%81%84
https://zenn.dev/ncdc/articles/flutter_auto_route#using-part-builder
上記のURLを参考にする

## 画像の利用

- widget

[extended_image](https://pub.dev/packages/extended_image)を利用しているので、画像のキャッシュは自動で行われる。

```dart
// example
// assetsもあります
ExtendedImage.network(
    'https://avatars.githubusercontent.com/u/1396951?v=4',
    width: 100,
    height: 100,
    fit: BoxFit.cover,
    cache: true,
    border: Border.all(color: Colors.red, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(30.0)),
    //cancelToken: cancellationToken,
)
```

- 画像の挿入

[flutter_gen](https://pub.dev/packages/flutter_gen)を利用しているので、以下のコマンドを実行することで、画像の挿入が可能です。

使い方

```bash
# assets/imagesに画像を挿入したら、以下のコマンドを実行する
make builder
```

記法

```dart
// example
// profileの部分のが画像のファイル名に値する
Widget build(BuildContext context) {
  return Assets.images.profile.image();
}

```

## 空白の利用

[gap](https://pub.dev/packages/gap)を利用しているので、空白の調整は自動で行われる。

```dart
// example
Gap(10)
```

## カラーの適応

flutter_gen を利用しているので、以下のコマンドを実行することで、カラーの挿入が可能です。

使い方

1. assets/colors にカラーを挿入

```xml
<?xml version="1.0" encoding="utf-8"?>
<resources>
    <color name="test_color">#DBEDFB</color>
    <!-- ここにカラーを挿入する -->
    <color name="xxxx">16進数のカラーコード</color>
</resources>
```

2. assets/colors にカラーを挿入したら、以下のコマンドを実行する

```bash
make builder
```

3. 使い方

記法

```dart
// example
// profileの部分のが画像のファイル名に値する
Widget build(BuildContext context) {
  return AppColor.textColor(); //textColorの部分はcolors.xmlに登録した名前
}

```

// Notion、Discord と連携できるかのお試しです

## 外部ツールとの連携

1. Notion
2. Discord
   push, プルリクエスト作成時、レビュー時に Discord 内へ通知が行きます
