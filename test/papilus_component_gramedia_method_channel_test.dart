import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:papilus_component_gramedia/papilus_component_gramedia_method_channel.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  MethodChannelPapilusComponentGramedia platform = MethodChannelPapilusComponentGramedia();
  const MethodChannel channel = MethodChannel('papilus_component_gramedia');

  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(
      channel,
      (MethodCall methodCall) async {
        return '42';
      },
    );
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(channel, null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
