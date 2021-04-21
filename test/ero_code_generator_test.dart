import 'package:ero_code_generator/ero_code_generator.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    test('Encode/Decode Test', () {
      final rawText = 'https://www.baidu.com/';
      final encodeResult = eroEncode(rawText);
      final decodeResult = eroDecode(encodeResult);
      expect(decodeResult, rawText);
    });
  });
}
