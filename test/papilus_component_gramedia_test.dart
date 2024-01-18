import 'package:flutter_test/flutter_test.dart';
import 'package:papilus_component_gramedia/papilus_component_gramedia.dart';
import 'package:papilus_component_gramedia/papilus_component_gramedia_platform_interface.dart';
import 'package:papilus_component_gramedia/papilus_component_gramedia_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockPapilusComponentGramediaPlatform
    with MockPlatformInterfaceMixin
    implements PapilusComponentGramediaPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final PapilusComponentGramediaPlatform initialPlatform = PapilusComponentGramediaPlatform.instance;

  test('$MethodChannelPapilusComponentGramedia is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelPapilusComponentGramedia>());
  });

  test('getPlatformVersion', () async {
    PapilusComponentGramedia papilusComponentGramediaPlugin = PapilusComponentGramedia();
    MockPapilusComponentGramediaPlatform fakePlatform = MockPapilusComponentGramediaPlatform();
    PapilusComponentGramediaPlatform.instance = fakePlatform;

    expect(await papilusComponentGramediaPlugin.getPlatformVersion(), '42');
  });
}
