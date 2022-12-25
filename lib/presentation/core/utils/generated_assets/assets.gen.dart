/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/card2Icon.png
  AssetGenImage get card2Icon =>
      const AssetGenImage('assets/icons/card2Icon.png');

  /// File path: assets/icons/cardIcon.png
  AssetGenImage get cardIcon =>
      const AssetGenImage('assets/icons/cardIcon.png');

  /// File path: assets/icons/filterIcon1.png
  AssetGenImage get filterIcon1 =>
      const AssetGenImage('assets/icons/filterIcon1.png');

  /// File path: assets/icons/filterIcon2.png
  AssetGenImage get filterIcon2 =>
      const AssetGenImage('assets/icons/filterIcon2.png');

  /// File path: assets/icons/filterIcon3.png
  AssetGenImage get filterIcon3 =>
      const AssetGenImage('assets/icons/filterIcon3.png');

  /// File path: assets/icons/filterIcon4.png
  AssetGenImage get filterIcon4 =>
      const AssetGenImage('assets/icons/filterIcon4.png');

  /// File path: assets/icons/filterIcon5.png
  AssetGenImage get filterIcon5 =>
      const AssetGenImage('assets/icons/filterIcon5.png');

  /// File path: assets/icons/flag.png
  AssetGenImage get flag => const AssetGenImage('assets/icons/flag.png');

  /// File path: assets/icons/icon_home1.png
  AssetGenImage get iconHome1 =>
      const AssetGenImage('assets/icons/icon_home1.png');

  /// File path: assets/icons/icon_home2.png
  AssetGenImage get iconHome2 =>
      const AssetGenImage('assets/icons/icon_home2.png');

  /// File path: assets/icons/icon_home3.png
  AssetGenImage get iconHome3 =>
      const AssetGenImage('assets/icons/icon_home3.png');

  /// File path: assets/icons/icon_map.png
  AssetGenImage get iconMap => const AssetGenImage('assets/icons/icon_map.png');

  /// File path: assets/icons/paypalIcon.png
  AssetGenImage get paypalIcon =>
      const AssetGenImage('assets/icons/paypalIcon.png');
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/app_logo.png
  AssetGenImage get appLogo =>
      const AssetGenImage('assets/images/app_logo.png');
}

class $AssetsTranslationsGen {
  const $AssetsTranslationsGen();

  /// File path: assets/translations/ar.json
  String get ar => 'assets/translations/ar.json';

  /// File path: assets/translations/en.json
  String get en => 'assets/translations/en.json';
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsTranslationsGen translations = $AssetsTranslationsGen();
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

  String get path => _assetName;

  String get keyName => _assetName;
}
