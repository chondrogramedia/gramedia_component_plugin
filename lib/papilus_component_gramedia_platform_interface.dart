import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'papilus_component_gramedia_method_channel.dart';

abstract class PapilusComponentGramediaPlatform extends PlatformInterface {
  /// Constructs a PapilusComponentGramediaPlatform.
  PapilusComponentGramediaPlatform() : super(token: _token);

  static final Object _token = Object();

  static PapilusComponentGramediaPlatform _instance = MethodChannelPapilusComponentGramedia();

  /// The default instance of [PapilusComponentGramediaPlatform] to use.
  ///
  /// Defaults to [MethodChannelPapilusComponentGramedia].
  static PapilusComponentGramediaPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [PapilusComponentGramediaPlatform] when
  /// they register themselves.
  static set instance(PapilusComponentGramediaPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
