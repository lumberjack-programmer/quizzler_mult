import 'option.dart';

class Question {
  late int id;
  late String text;
  late List<Option> options;

  Question({required int id, required String text, required List<Option> options}) {
    this.id = id;
    this.text = text;
    this.options = options;
  }
}
