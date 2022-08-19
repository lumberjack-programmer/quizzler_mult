import 'option.dart';
import 'question.dart';

class QuestionBank {


 final List<Question> questionBank = [
    Question(
        id: 1,
        text: 'When you initialize SAP Hybris from ant, what actions are executed?',
        options: [
          Option(option: 'aborts all running cronjobs', answer: false),
          Option(option: 'delete and recreate the database', answer: true),
          Option(option: 'delete all tables', answer: false),
          Option(option: 'import all project data', answer:  false),
        ],),
    Question(
      id: 2,
      text: 'The BTG module is used to ?',
      options: [
        Option(option: 'personalize a web applications based on customers', answer: false),
        Option(option: 'business to groups', answer: true),
        Option(option: 'provides a upgraded version of the CMS cockpit', answer: false),
        Option(option: 'add business targets accessible from the backoffice', answer:  false),
      ],),

   Question(
     id: 3,
     text: 'What ant target should you use to start working on a new B2C implementation ?',
     options: [
       Option(option: 'ant installer -r b2c_acc', answer: false),
       Option(option: 'ant extgen', answer: true),
       Option(option: 'ant modulegen', answer: false),
       Option(option: 'ant accelerator', answer:  false),
     ],),
   Question(
     id: 4,
     text: 'What Spring context has the larger scope ?',
     options: [
       Option(option: 'web context', answer: false),
       Option(option: 'core context', answer: true),
       Option(option: 'shared context', answer: false),
       Option(option: 'international context', answer:  false),
     ],),

   Question(
     id: 5,
     text: 'During an Impex import what will happen when the import process can’t ind a reference to an item type ?',
     options: [
       Option(option: 'import process will fail and move onto the next file', answer: false),
       Option(option: 'the value line would be ignored', answer: true),
       Option(option: 'the value line would be saved and a new attempt would be made', answer: false),
       Option(option: 'the value line would be saved and attached to an error log entry', answer:  false),
     ],),

   Question(
     id: 6,
     text: 'When loading available prices what is the price factory trying to match ?',
     options: [
       Option(option: 'customer/customer group', answer: false),
       Option(option: 'product/product group', answer: true),
       Option(option: 'date range if any conigured', answer: false),
       Option(option: 'promotion/promotion group', answer:  false),
     ],),


  ];






}