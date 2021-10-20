import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:emoji_choose/emoji_choose.dart';

void main() {
  const MethodChannel channel = MethodChannel('emoji_choose');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  /*test('getPlatformVersion', () async {
    expect(await EmojiChoose.platformVersion, '42');
  });*/
}
