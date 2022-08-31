import '../../objectbox.g.dart';
import 'question.dart';
import 'option.dart';

class ObjectBox {

  late final Store store;

  late final Box<Question> questionBox;
  late final Box<List<Option>> optionsBox;

  late final Stream<Query<Question>> questionStream;

  ObjectBox._create(this.store){
    questionBox = Box<Question>(store);
    optionsBox = Box<List<Option>>(store);
  }

  static Future<ObjectBox> create() async {
    final store = await openStore();
    return ObjectBox._create(store);
  }
}