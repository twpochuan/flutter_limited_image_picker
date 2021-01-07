
import 'dart:async';

import 'package:flutter/services.dart';

class LimitedLibraryPicker {
  static const MethodChannel _channel =
      const MethodChannel('limited_library_picker');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static Future<void> openLimitedLibraryPicker() async {
    await _channel.invokeMethod('openLimitedLibraryPicker');
  }
}
