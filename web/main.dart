import 'dart:async';
import 'dart:html';
import 'lib/person.modal.dart' as PersonModel;

void main() {
  const TIME_OUT = const Duration(seconds: 2);

  querySelector('#output').text = 'Your Dart app is running.';
  print('Hey Dart Community!');
  print(reverseWord('hosam'));
  var x = 'sdf';
  List<String> strs = ['sdfsdf', '6'];

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

  //timeout.cancel();
}

String reverseWord(String word) {
  return word.split('').reversed.join('');
}
