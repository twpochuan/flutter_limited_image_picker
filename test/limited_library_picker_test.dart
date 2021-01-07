import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:limited_library_picker/limited_library_picker.dart';

void main() {
  const MethodChannel channel = MethodChannel('limited_library_picker');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await LimitedLibraryPicker.platformVersion, '42');
  });
}
