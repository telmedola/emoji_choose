import 'dart:async';
// In order to *not* need this ignore, consider extracting the "web" version
// of your plugin as a separate package, instead of inlining it in the same
// package as the core of your plugin.
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html show window;

import 'package:flutter/services.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';

/// A web implementation of the EmojiChoose plugin.
class EmojiChooseWeb {
  static void registerWith(Registrar registrar) {
    final MethodChannel channel = MethodChannel(
      'emoji_choose',
      const StandardMethodCodec(),
      registrar,
    );

    final pluginInstance = EmojiChooseWeb();
    channel.setMethodCallHandler(pluginInstance.handleMethodCall);
  }

  /// Handles method calls over the MethodChannel of this plugin.
  /// Note: Check the "federated" architecture for a new way of doing this:
  /// https://flutter.dev/go/federated-plugins
  Future<dynamic> handleMethodCall(MethodCall call) async {
    switch (call.method) {
      case 'getPlatformVersion':
        return getPlatformVersion();
      case 'checkAvailability':
        Map<String, String> map = call.arguments("emoji");
        Map<String, String> filtered = <String, String>{};
        for (MapEntry<String, String> entry in map.entries ) {
          //if(PaintCompat.hasGlyph(paint, entry.getValue().toString())){
          //  filtered.put(entry.getKey().toString(), entry.getValue().toString());
          //}
          filtered.putIfAbsent(entry.key.toString(), () => entry.value.toString());
        }
        return filtered;
      default:
        throw PlatformException(
          code: 'Unimplemented',
          details: 'emoji_choose for web doesn\'t implement \'${call.method}\'',
        );
    }
  }

  /// Returns a [String] containing the version of the platform.
  Future<String> getPlatformVersion() {
    final version = html.window.navigator.userAgent;
    return Future.value(version);
  }
}
