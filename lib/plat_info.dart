
import 'dart:async';

import 'package:flutter/services.dart';

class PlatInfo {
  static const MethodChannel _channel = MethodChannel('plat_info');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static Future<String?> get deviceName async {
    final String? version = await _channel.invokeMethod('getDeviceName');
    return version;
  }
}
