import 'dart:async';
import 'dart:html';
import 'lib/person.modal.dart' as PersonModel;

void main() {
  const TIME_OUT = const Duration(seconds: 2);

  querySelector('#output').text = 'Your Dart app is running.';
  print('Hey Dart Community!');
  print(reverseWord('hosam'));
  var x = 'sdf';
  List<String> strs = ['sdfsdf', '6', x];
  print(strs.reversed);
  strs.map((x) => print(x));
  PersonModel.Person hosam = new PersonModel.Person('Hosam', 22);
  print(hosam.logName);

  InputElement appInput = document.createElement('input');
  document.body.append(appInput);
  appInput.placeholder = 'type any thing';

  void handleInputLogic() {
    print('print this after $TIME_OUT');
    appInput.value = 'after $TIME_OUT seconds';
  }

  Timer timeout = new Timer(TIME_OUT, handleInputLogic);
  querySelector('.log').text = hosam.logName;
  timeout.cancel();

  // test emojis

  print(generateEmojis());
  print(getEmojis(generateEmojis()));
}

String reverseWord(String word) {
  return word.split('').reversed.join('');
}

List<String> getEmojis(List charcodes) {
  return charcodes.map(convertToEmoji);
}

convertToEmoji(int code) {
  String x = new String.fromCharCode(code);
  return x;
}

generateEmojis() {
  List emojisCodes = new List(15);
  // String index = (0+1).toString();
  // var x = '1F60' + int.parse(index ,radix: 16).toString();
  return emojisCodes
      .map((x) => '1F60' + int.parse((x + 1).toString(), radix: 16).toString());
}
