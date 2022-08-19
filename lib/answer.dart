class Answer {

  late int id;
  late String text;
  late bool option1;
  late bool option2;
  late bool option3;
  late bool option4;

  Answer({required int id, required String text, required bool option1, required bool option2,
    required bool option3, required bool option4,}) {

    this.id = id;
    this.text = text;
    this.option1 = option1;
    this.option2 = option2;
    this.option3 = option3;
    this.option4 = option4;
  }
}