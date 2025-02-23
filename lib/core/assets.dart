// Generated by Flutter Assets

// ignore_for_file: unused_field, camel_case_types, non_constant_identifier_names, library_private_types_in_public_api

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
        
class Assets extends StatelessWidget {
  final AssetsData assets;
  final Widget child;

  const Assets({
    super.key,
    required this.assets,
    required this.child,
  });

  static AssetsData of(BuildContext context) {
    final widget = context.dependOnInheritedWidgetOfExactType<_InheritedAssets>();
    return widget?.assets ?? AssetsData.light();
  }

  @override
  Widget build(BuildContext context) {
    return _InheritedAssets(
      assets: assets,
      child: child,
    );
  }
}

class _InheritedAssets extends InheritedWidget {
  final AssetsData assets;

  const _InheritedAssets({
    required this.assets,
    required super.child,
  });

  @override
  bool updateShouldNotify(covariant _InheritedAssets oldWidget) => assets != oldWidget.assets;
}

class AssetsData {
  static AssetsData? _light;
  static AssetsData? _dark;

  factory AssetsData.light() => _light ??= AssetsData._(brightness: Brightness.light);
  factory AssetsData.dark() => _dark ??= AssetsData._(brightness: Brightness.dark);
  factory AssetsData.brightness(Brightness brightness) => brightness == Brightness.light ? AssetsData.light() : AssetsData.dark();

  final Brightness _brightness;

  AssetsData._({
    required Brightness brightness,
  })  : _brightness = brightness,
        icons = _assets_icons_dart._(brightness: brightness),
        images = _assets_images_dart._(brightness: brightness);

  final _assets_icons_dart icons;
  final _assets_images_dart images;
}

class _assets_icons_dart {
  final Brightness _brightness;

  _assets_icons_dart._({
    required Brightness brightness,
  })  : _brightness = brightness;

  final add_user_png = 'assets/icons/add_user.png';
  final apple_png = 'assets/icons/apple.png';
  final chat_pro_png = 'assets/icons/chat_pro.png';
  final facebook_png = 'assets/icons/facebook.png';
  final google_png = 'assets/icons/google.png';
  final hat_pro_png = 'assets/icons/hat_pro.png';
  final image_pro_png = 'assets/icons/image_pro.png';
  final message_png = 'assets/icons/message.png';
  final planet_png = 'assets/icons/planet.png';
  final planet14_png = 'assets/icons/planet14.png';
  final search_pro_png = 'assets/icons/search_pro.png';
  final unlock_png = 'assets/icons/unlock.png';
}

class _assets_images_dart {
  final Brightness _brightness;

  _assets_images_dart._({
    required Brightness brightness,
  })  : _brightness = brightness;

  final ai_friend_png = 'assets/images/ai_friend.png';
  final baddies_logo_png = 'assets/images/baddies_logo.png';
  final grain_texture_png = 'assets/images/grain_texture.png';
  final pink_grain_texture_png = 'assets/images/pink_grain_texture.png';
}
