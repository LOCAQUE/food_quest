/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsGifGen {
  const $AssetsGifGen();

  /// File path: assets/gif/a1.gif
  AssetGenImage get a1 => const AssetGenImage('assets/gif/a1.gif');

  /// File path: assets/gif/a10.gif
  AssetGenImage get a10 => const AssetGenImage('assets/gif/a10.gif');

  /// File path: assets/gif/a2.gif
  AssetGenImage get a2 => const AssetGenImage('assets/gif/a2.gif');

  /// File path: assets/gif/a3.gif
  AssetGenImage get a3 => const AssetGenImage('assets/gif/a3.gif');

  /// File path: assets/gif/a4.gif
  AssetGenImage get a4 => const AssetGenImage('assets/gif/a4.gif');

  /// File path: assets/gif/a5.gif
  AssetGenImage get a5 => const AssetGenImage('assets/gif/a5.gif');

  /// File path: assets/gif/a6.gif
  AssetGenImage get a6 => const AssetGenImage('assets/gif/a6.gif');

  /// File path: assets/gif/a7.gif
  AssetGenImage get a7 => const AssetGenImage('assets/gif/a7.gif');

  /// File path: assets/gif/a8.gif
  AssetGenImage get a8 => const AssetGenImage('assets/gif/a8.gif');

  /// File path: assets/gif/a9.gif
  AssetGenImage get a9 => const AssetGenImage('assets/gif/a9.gif');

  /// File path: assets/gif/b1.gif
  AssetGenImage get b1 => const AssetGenImage('assets/gif/b1.gif');

  /// File path: assets/gif/b2.gif
  AssetGenImage get b2 => const AssetGenImage('assets/gif/b2.gif');

  /// File path: assets/gif/b3.gif
  AssetGenImage get b3 => const AssetGenImage('assets/gif/b3.gif');

  /// File path: assets/gif/c1.gif
  AssetGenImage get c1 => const AssetGenImage('assets/gif/c1.gif');

  /// File path: assets/gif/c2.gif
  AssetGenImage get c2 => const AssetGenImage('assets/gif/c2.gif');

  /// File path: assets/gif/c3.gif
  AssetGenImage get c3 => const AssetGenImage('assets/gif/c3.gif');

  /// File path: assets/gif/splash.gif
  AssetGenImage get splash => const AssetGenImage('assets/gif/splash.gif');

  /// List of all assets
  List<AssetGenImage> get values =>
      [a1, a10, a2, a3, a4, a5, a6, a7, a8, a9, b1, b2, b3, c1, c2, c3, splash];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/box.png
  AssetGenImage get box => const AssetGenImage('assets/images/box.png');

  /// File path: assets/images/castle.png
  AssetGenImage get castle => const AssetGenImage('assets/images/castle.png');

  /// File path: assets/images/default_tours.png
  AssetGenImage get defaultTours =>
      const AssetGenImage('assets/images/default_tours.png');

  /// File path: assets/images/header.jpeg
  AssetGenImage get header => const AssetGenImage('assets/images/header.jpeg');

  /// File path: assets/images/header2.jpeg
  AssetGenImage get header2 =>
      const AssetGenImage('assets/images/header2.jpeg');

  /// File path: assets/images/logo.png
  AssetGenImage get logo => const AssetGenImage('assets/images/logo.png');

  /// File path: assets/images/monster_a_1.png
  AssetGenImage get monsterA1 =>
      const AssetGenImage('assets/images/monster_a_1.png');

  /// File path: assets/images/monster_b_1.png
  AssetGenImage get monsterB1 =>
      const AssetGenImage('assets/images/monster_b_1.png');

  /// File path: assets/images/monster_c_1.png
  AssetGenImage get monsterC1 =>
      const AssetGenImage('assets/images/monster_c_1.png');

  /// File path: assets/images/point.png
  AssetGenImage get point => const AssetGenImage('assets/images/point.png');

  /// File path: assets/images/taskClear.gif
  AssetGenImage get taskClear =>
      const AssetGenImage('assets/images/taskClear.gif');

  /// File path: assets/images/test.png
  AssetGenImage get test => const AssetGenImage('assets/images/test.png');

  /// File path: assets/images/ushi.png
  AssetGenImage get ushi => const AssetGenImage('assets/images/ushi.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        box,
        castle,
        defaultTours,
        header,
        header2,
        logo,
        monsterA1,
        monsterB1,
        monsterC1,
        point,
        taskClear,
        test,
        ushi
      ];
}

class Assets {
  Assets._();

  static const $AssetsGifGen gif = $AssetsGifGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
