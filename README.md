# Ero Code Generator
> 一个把神秘链接转换为H....的小工具。
> 要使用它，去下载一个Dart吧~
> 啊..原理很简单和Base64的差不多

## Usage

A simple usage example:

```dart
import 'package:ero_code_generator/ero_code_generator.dart';

void main() {
  final result = eroEncode('https://www.baidu.com/');
  print('encode: $result');
  print('decode: ${eroDecode(result)}');
}

```
