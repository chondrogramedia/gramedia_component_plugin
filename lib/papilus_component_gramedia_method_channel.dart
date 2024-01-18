import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'papilus_component_gramedia_platform_interface.dart';

/// An implementation of [PapilusComponentGramediaPlatform] that uses method channels.
class MethodChannelPapilusComponentGramedia extends PapilusComponentGramediaPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('papilus_component_gramedia');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
