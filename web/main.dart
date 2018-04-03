import 'dart:html';

void main() {
  querySelector('#output').text = 'Your Dart app is running.';
  print('Hey Dart Community!');
  print(reverseWord('hosam'));
  var x = 'sdf';
  List<String> strs = ['sdfsdf', '6'];
}

String reverseWord(String word) {
  return word.split('').reversed.join('');
}
