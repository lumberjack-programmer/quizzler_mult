
import 'package:objectbox/objectbox.dart';
import 'question.dart';

@Entity()
class Option {
   int id = 0;
   bool? answer;

   final option = ToOne<Question>();
}


