/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsFontsGen {
  const $AssetsFontsGen();

  /// File path: assets/fonts/MyIcons.ttf
  String get myIcons => 'assets/fonts/MyIcons.ttf';

  /// File path: assets/fonts/config.json
  String get config => 'assets/fonts/config.json';

  /// List of all assets
  List<String> get values => [myIcons, config];
}

class $AssetsProfileGen {
  const $AssetsProfileGen();

  /// File path: assets/profile/old_profile.jpeg
  AssetGenImage get oldProfile =>
      const AssetGenImage('assets/profile/old_profile.jpeg');

  /// File path: assets/profile/profile.jpeg
  AssetGenImage get profile =>
      const AssetGenImage('assets/profile/profile.jpeg');

  /// List of all assets
  List<AssetGenImage> get values => [oldProfile, profile];
}

class $AssetsProjectsGen {
  const $AssetsProjectsGen();

  /// File path: assets/projects/myreco.png
  AssetGenImage get myreco => const AssetGenImage('assets/projects/myreco.png');

  /// File path: assets/projects/starty.png
  AssetGenImage get starty => const AssetGenImage('assets/projects/starty.png');

  /// List of all assets
  List<AssetGenImage> get values => [myreco, starty];
}

class $AssetsTranslationsGen {
  const $AssetsTranslationsGen();

  /// File path: assets/translations/en.json
  String get en => 'assets/translations/en.json';

  /// File path: assets/translations/it.json
  String get it => 'assets/translations/it.json';

  /// List of all assets
  List<String> get values => [en, it];
}

class Assets {
  Assets._();

  static const $AssetsFontsGen fonts = $AssetsFontsGen();
  static const $AssetsProfileGen profile = $AssetsProfileGen();
  static const $AssetsProjectsGen projects = $AssetsProjectsGen();
  static const $AssetsTranslationsGen translations = $AssetsTranslationsGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

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
