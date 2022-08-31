import 'package:objectbox/objectbox.dart';
import 'option.dart';

  @Entity()
  class Question {
    int id = 0;
    String? text;

    final options = ToMany<Option>();
}