import 'dart:convert';

class Awesome {
  bool get isAwesome => true;
}

List<String> _eroCodes = ['嗯', '~', '啊', '❤'];

/// Generate a H text
/// Emmm, like base64?
String eroEncode(String text) {
  final utf8Codes = utf8.encode(text);
  var result = '';
  result += utf8Codes.map((code) {
    var encoded = '';
    encoded += _eroCodes[(code >> 6) & 0x03];
    encoded += _eroCodes[(code >> 4) & 0x03];
    encoded += _eroCodes[(code >> 2) & 0x03];
    encoded += _eroCodes[(code) & 0x03];
    return encoded;
  }).join('');
  return '嗯$result啊';
}

/// decode, you know..wwww❤~
String? eroDecode(String text) {
  assert(text.length.isEven);
  var index = 1;
  var resultCodes = <int>[];
  while(index < text.length - 1) {
    var utf8Unit = 0;
    utf8Unit += _eroCodes.indexOf(text[index]) << 6;
    utf8Unit += _eroCodes.indexOf(text[index + 1]) << 4;
    utf8Unit += _eroCodes.indexOf(text[index + 2]) << 2;
    utf8Unit += _eroCodes.indexOf(text[index + 3]);
    index += 4;
    resultCodes.add(utf8Unit);
  }
  return utf8.decode(resultCodes);
}