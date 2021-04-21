import 'package:ero_code_generator/ero_code_generator.dart';

void main() {
  final result = eroEncode('https://www.baidu.com/');
  print('encode: $result');
  print('decode: ${eroDecode(result)}');
}
