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
        Option(option: 'personalize a web applications based on customers', answer: true),
        Option(option: 'business to groups', answer: false),
        Option(option: 'provides a upgraded version of the CMS cockpit', answer: false),
        Option(option: 'add business targets accessible from the backoffice', answer:  false),
      ],),

   Question(
     id: 3,
     text: 'What ant target should you use to start working on a new B2C implementation ?',
     options: [
       Option(option: 'ant installer -r b2c_acc', answer: false),
       Option(option: 'ant extgen', answer: false),
       Option(option: 'ant modulegen', answer: true),
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
       Option(option: 'the value line would be ignored', answer: false),
       Option(option: 'the value line would be saved and a new attempt would be made', answer: true),
       Option(option: 'the value line would be saved and attached to an error log entry', answer:  false),
     ],),

   Question(
     id: 6,
     text: 'When loading available prices what is the price factory trying to match ?',
     options: [
       Option(option: 'customer/customer group', answer: true),
       Option(option: 'product/product group', answer: true),
       Option(option: 'date range if any conigured', answer: true),
       Option(option: 'promotion/promotion group', answer:  false),
     ],),




   Question(
     id: 7,
     text: 'What is true about the DefaultCMSComponentController controller?',
     options: [
       Option(option: 'it will inject all attributes into the model', answer: false),
       Option(option: 'it will inject all front-end attributes (non system) into the model', answer: true),
       Option(option: 'it is used by default if no specific controller are implemented', answer: true),
       Option(option: 'it should be avoided', answer:  false),
     ],),

   Question(
     id: 8,
     text: 'Which of the following components are deprecated?',
     options: [
       Option(option: 'cockpit framework', answer: true),
       Option(option: 'Jalo layer', answer: true),
       Option(option: 'task engine', answer: false),
       Option(option: 'service layer', answer:  false),
     ],),

   Question(
     id: 9,
     text: 'What is the correct way of configuring a new logger for the package com.hybhub.hybhubaddon?',
     options: [
       Option(option: 'log4j.logger.com.hybhub.hybhubaddon = info', answer: false),
       Option(option: 'log4j.logger.hybhub.name=com.hybhub.hybhubaddon\n'
           'log4j.logger.hybhub.level=info\nlog4j.logger.hybhub.appenderRef.stdout.ref=STDOUT', answer: false),
       Option(option: 'log4j2.logger.hybhub.name=com.hybhub.hybhubaddon\n'
           'log4j2.logger.hybhub.level=info\nlog4j2.logger.hybhub.appenderRef.stdout.ref=STDOUT', answer: true),
       Option(option: 'log4j2.logger.com.hybhub.hybhubaddon=info\n'
           'log4j2.logger.com.hybhub.hybhubaddon=STDOUT', answer:  false),
     ],),

   Question(
     id: 10,
     text: 'The OCC webservices are?',
     options: [
       Option(option: 'restful API', answer: true),
       Option(option: 'restless API', answer: false),
       Option(option: 'soap API', answer: false),
       Option(option: 'oAuth API', answer:  false),
     ],),

   Question(
     id: 11,
     text: 'What statements are wrong about converters?',
     options: [
       Option(option: 'they all have the same bean parent abstractPopulatingConverter', answer: false),
       Option(option: 'they contain a list of attributes to convert', answer: true),
       Option(option: 'they contain a list a populators to call', answer: false),
       Option(option: 'they are un-aware of the object type they are converting', answer:  true),
     ],),

   Question(
     id: 12,
     text: 'What statements are true about collections under item type definitions?',
     options: [
       Option(option: 'a collection is comma-separated list of PKs', answer: true),
       Option(option: 'collections are preferred over relations', answer: false),
       Option(option: 'at runtime collections are loaded into a collection of objects', answer: true),
       Option(option: 'collections can store as many objects as needed', answer:  false),
     ],),

   Question(
     id: 13,
     text: 'Which of the following definition is the correct one for unit tests?',
     options: [
       Option(option: 'requires access to the database and need a running SAP Hybris',
           answer: false),
       Option(option: 'requires access to the database and don’t need a running SAP Hybris',
           answer: false),
       Option(option: 'does not require access to the database and don’t need a running SAP Hybris',
           answer: true),
       Option(option: 'require access to the database and starts a transaction for each test',
           answer:  false),
     ],),

   Question(
     id: 14,
     text: 'When you synchronize a Media object from a Staged to an Online catalog what happens to the media ile?',
     options: [
       Option(option: 'the Media file is referenced by the Online and Staged Media', answer: true),
       Option(option: 'the Media file is copied to the Online data folder and referenced by the Online Media',
           answer: false),
       Option(option: 'the Media file is moved to a shared folder and referenced by both Media',
           answer: false),
       Option(option: 'the Media file is embedded inside the ile attribute and synchronize like all other attributes',
           answer:  false),
     ],),

   Question(
     id: 15,
     text: 'Select the existing Impex header mode',
     options: [
       Option(option: 'INSERTED', answer: false),
       Option(option: 'UPDATE_INSERT', answer: false),
       Option(option: 'REMOVE', answer: true),
       Option(option: 'DELETE', answer:  false),
     ],),

   Question(
     id: 16,
     text: ' Select the right definition for the facade layer',
     options: [
       Option(option: 'builds a complex object using simple objects and using a step by step approach',
           answer: false),
       Option(option: 'separates application’s concerns', answer: false),
       Option(option: 'hides the complexities of the system and provides a simplified interface to the client',
           answer: true),
       Option(option: 'add new functionality to an existing object without altering its structure',
           answer:  false),
     ],),

   Question(
     id: 17,
     text: 'How could you configure a new hot folder?',
     options: [
       Option(option: 'from the HAC',
           answer: false),
       Option(option: 'from the HMC', answer: false),
       Option(option: 'from the import cockpit',
           answer: false),
       Option(option: 'from a Spring config ile',
           answer:  true),
     ],),

   Question(
     id: 18,
     text: 'How do you create a new interceptor?',
     options: [
       Option(option: 'declare it along with the item type definition',
           answer: false),
       Option(option: 'provide an implementation of one of Interceptor interface', answer: true),
       Option(option: 'run a system update',
           answer: true),
       Option(option: 'add a Spring bean mapping the item type and the Interceptor implementation',
           answer:  false),
     ],),


   Question(
     id: 19,
     text: 'A checkout step has?',
     options: [
       Option(option: 'checkoutGroup reference',
           answer: true),
       Option(option: 'checkoutStepValidator reference', answer: true),
       Option(option: 'transitions map',
           answer: true),
       Option(option: 'progressBarId string',
           answer:  true),
     ],),

   Question(
     id: 20,
     text: 'What are are valid legacy cockpit areas?',
     options: [
       Option(option: 'navigation',
           answer: true),
       Option(option: 'item', answer: false),
       Option(option: 'browser',
           answer: true),
       Option(option: 'editor',
           answer:  true),
     ],),

   Question(
     id: 21,
     text: 'When running an initialization on one tenant SAP Hybris will?',
     options: [
       Option(option: 'delete all tables',
           answer: false),
       Option(option: 'delete all known tables', answer: false),
       Option(option: 'delete all known tables starting with the tenant table prefix',
           answer: true),
       Option(option: 'delete and recreate the database',
           answer:  false),
     ],),

   Question(
     id: 22,
     text: 'When creating a new item how do you generate a new primary key?',
     options: [
       Option(option: 'using java.util.UUID.randomUUID()',
           answer: false),
       Option(option: 'using the primaryKeyService', answer: false),
       Option(option: 'primary keys creation is automatically handled by the database',
           answer: false),
       Option(option: 'primary keys creation is automatically handled by the service layer',
           answer:  true),
     ],),

   Question(
     id: 23,
     text: 'What statements are wrong about extensions?',
     options: [
       Option(option: 'they have to be inside the bin folder',
           answer: false),
       Option(option: 'they need to have a dependency to yempty', answer: false),
       Option(option: 'they can written using Groovy',
           answer: true),
       Option(option: 'they are always automatically loaded',
           answer:  false),
     ],),

   Question(
     id: 24,
     text: 'Which item types exist?',
     options: [
       Option(option: 'collectiontype',
           answer: true),
       Option(option: 'enumtype', answer: true),
       Option(option: 'atomictype',
           answer: true),
       Option(option: 'listtype',
           answer:  false),
     ],),

   Question(
     id: 25,
     text: 'A customer segment could be executed in?',
     options: [
       Option(option: 'optimized processing',
           answer: true),
       Option(option: 'full processing', answer: true),
       Option(option: 'jalo processing',
           answer: false),
       Option(option: 'complete processing',
           answer:  false),
     ],),

   Question(
     id: 26,
     text: 'What statements are true about the SAP Hybris server?',
     options: [
       Option(option: 'based on Apache Tomcat',
           answer: true),
       Option(option: 'good for production', answer: true),
       Option(option: 'compatible with EJB',
           answer: false),
       Option(option: 'can be started from the command line',
           answer:  true),
     ],),

   Question(
     id: 27,
     text: 'Why a Spring MVC controller needs to return a String?',
     options: [
       Option(option: 'to return it as an HTML page',
           answer: false),
       Option(option: 'to load a view', answer: true),
       Option(option: 'to load a servlet',
           answer: false),
       Option(option: 'to load a model',
           answer:  false),
     ],),

   Question(
     id: 28,
     text: 'What features are available through the Order Management Module (formally OMS)?',
     options: [
       Option(option: 'order splitting',
           answer: true),
       Option(option: 'payment', answer: false),
       Option(option: 'sourcing',
           answer: true),
       Option(option: 'promotion engine',
           answer:  false),
     ],),


   Question(
     id: 29,
     text: 'Why do you need to define stop words for for your search configuration?',
     options: [
       Option(option: 'to ignore configured words while searching',
           answer: true),
       Option(option: 'to boost configured words while searching', answer: false),
       Option(option: 'to stop the query after a configured word',
           answer: false),
       Option(option: 'to split the query in two queries',
           answer:  false),
     ],),

   Question(
     id: 30,
     text: 'What are the two main components of the rule engine?',
     options: [
       Option(option: 'rule processor',
           answer: true),
       Option(option: 'rule matcher', answer: false),
       Option(option: 'rule executor',
           answer: false),
       Option(option: 'rule builder',
           answer:  true),
     ],),

////

   Question(
     id: 31,
     text: 'Why would you use classiication?',
     options: [
       Option(option: 'to optimize Apache SOLR requests',
           answer: false),
       Option(option: 'to have dynamic product features', answer: true),
       Option(option: 'to speed up search',
           answer: false),
       Option(option: 'to unify product and category attributes',
           answer:  false),
     ],),

   Question(
     id: 32,
     text: 'When you run an impex import query from the HAC with the default coniguration what statements are true?',
     options: [
       Option(option: 'you are running distributed impexes',
           answer: false),
       Option(option: 'you are using the service layer', answer: true),
       Option(option: 'you are using the jalo layer',
           answer: false),
       Option(option: 'import relaxed is activated',
           answer:  false),
     ],),

   Question(
     id: 33,
     text: 'Which of the following would be good uses for a SAP Hybris CronJob?',
     options: [
       Option(option: 'synchronizing the stock level with an external warehouse once per day',
           answer: true),
       Option(option: 'notify the System Administrator when the peak load on the server passes a critical point',
           answer: false),
       Option(option: 'perform an inventory once per week at midnight',
           answer: true),
       Option(option: 'any task that isn’t database related, cronjobs are designed to perform operating System tasks, notdatabase system tasks',
           answer:  false),
     ],),


   Question(
     id: 34,
     text: 'Content slots for page template are?',
     options: [
       Option(option: 'place holder for CMS component',
           answer: true),
       Option(option: 'place holder for JSP tags',
           answer: false),
       Option(option: 'shared across all pages using the page template',
           answer: true),
       Option(option: 'conigured on the JSP view page',
           answer:  false),
     ],),


   Question(
     id: 35,
     text: 'Is it possible to add new enumeration values by runtime?',
     options: [
       Option(option: 'no',
           answer: false),
       Option(option: 'yes if you are using JRebel',
           answer: false),
       Option(option: 'yes if the enumeration is dynamic',
           answer: true),
       Option(option: 'yes if the enumeration is a subtype of the HybrisEnumValue class',
           answer:  true),
     ],),


   Question(
     id: 36,
     text: 'What a POS is ?',
     options: [
       Option(option: 'a warehouse',
           answer: false),
       Option(option: 'a physical store',
           answer: true),
       Option(option: 'a web store',
           answer: false),
       Option(option: 'a geolocalization service',
           answer:  false),
     ],),

   Question(
     id: 37,
     text: 'What statements are wrong about Backoffice widgets?',
     options: [
       Option(option: 'widget can extend each other',
           answer: false),
       Option(option: 'widget ids must be unique or the compilation fails',
           answer: true),
       Option(option: 'views are implemented using JSP tags',
           answer: true),
       Option(option: 'widgets can have parameters',
           answer:  false),
     ],),

   Question(
     id: 38,
     text: 'When writing unit tests how should you simulate pojo dependencies to external services, facades?',
     options: [
       Option(option: 'the test class should extend HybrisUnitTests',
           answer: false),
       Option(option: 'the test class should extend ServicelayerTest',
           answer: false),
       Option(option: 'use Mockito to stub dependencies',
           answer: true),
       Option(option: 'wrap all tests inside a transaction',
           answer:  false),
     ],),

   Question(
     id: 39,
     text: 'What is the notiication framework used for?',
     options: [
       Option(option: 'notify cockpit users',
           answer: false),
       Option(option: 'notify customers',
           answer: true),
       Option(option: 'notify administrators',
           answer: false),
       Option(option: 'facade for the event service',
           answer:  false),
     ],),

   Question(
     id: 40,
     text: 'What statements are true about stock levels?',
     options: [
       Option(option: 'the stock service can check stock levels across multiple warehouses',
           answer: false),
       Option(option: 'a single warehouse can contain multiple stock levels for the same product',
           answer: true),
       Option(option: 'a base store is attached to a single warehouse',
           answer: false),
       Option(option: 'a product can be sold even if it has no stock',
           answer:  true),
     ],),

   Question(
     id: 41,
     text: 'The CS cockpit was designed for?',
     options: [
       Option(option: 'customer segment management',
           answer: false),
       Option(option: 'order life cycles management',
           answer: true),
       Option(option: ' css rendering management',
           answer: false),
       Option(option: 'customer security management',
           answer:  true),
     ],),

   Question(
     id: 42,
     text: 'The CS cockpit was designed for?',
     options: [
       Option(option: 'customer segment management',
           answer: false),
       Option(option: 'order life cycles management',
           answer: true),
       Option(option: 'css rendering management',
           answer: false),
       Option(option: 'customer security management',
           answer:  false),
     ],),

   Question(
     id: 43,
     text: 'SAP Hybris semi-session failover mechanism allows to?',
     options: [
       Option(option: 'automatically redirected users to the login page of a new node when on node goes down',
           answer: false),
       Option(option: 'to transfer all sessions of the failing node to other available nodes without loss of data',
           answer: true),
       Option(option: 'to always have all sessions replicated on every nodes',
           answer: false),
       Option(option: 'to automatically redirect users to a temporary page',
           answer:  false),
     ],),

   Question(
     id: 44,
     text: 'What service should you use to save an model?',
     options: [
       Option(option: 'persistenceService',
           answer: false),
       Option(option: 'jaloService',
           answer: false),
       Option(option: 'serviceLayerService',
           answer: false),
       Option(option: 'modelService',
           answer:  true),
     ],),


   Question(
     id: 45,
     text: 'If you are testing a Flexible Search Restriction, the user you are running the query as?',
     options: [
       Option(option: 'should be admin',
           answer: false),
       Option(option: 'should be lexiblesearchquery',
           answer: false),
       Option(option: 'should be a member of the searchquery group',
           answer: false),
       Option(option: 'should not be a member of the admin group',
           answer:  true),
     ],),

   Question(
     id: 46,
     text: 'With default coniguration when you load a model item with the model service (for examples product model).What is automatically loaded inside the object?',
     options: [
       Option(option: 'nothing, all attributes are lazy loaded',
           answer: true),
       Option(option: 'only literal values',
           answer: false),
       Option(option: 'only reference values',
           answer: false),
       Option(option: 'all',
           answer:  false),
     ],),

   // Mock exam 3

   Question(
     id: 47,
     text: 'Dynamic forms are used to?',
     options: [
       Option(option: 'Automatically generates html forms from an Hybris model object',
           answer: false),
       Option(option: 'Executes dynamic actions on attributes, sections and tabs when a model property changes',
           answer: true),
       Option(option: 'Executes dynamic actions on dynamic attributes based on the spring actions attached to the model',
           answer: false),
       Option(option: 'Automatically saves input data when the user ills a form from the accelerator',
           answer:  false),
     ],),

   Question(
     id: 48,
     text: 'Dynamic forms are used to?',
     options: [
       Option(option: 'Automatically generates html forms from an Hybris model object',
           answer: false),
       Option(option: 'Executes dynamic actions on attributes, sections and tabs when a model property changes',
           answer: true),
       Option(option: 'Executes dynamic actions on dynamic attributes based on the spring actions attached to the model',
           answer: false),
       Option(option: 'Automatically saves input data when the user ills a form from the accelerator',
           answer:  false),
     ],),


   Question(
     id: 49,
     text: 'When you use advanced personalization what are the valid scopes for segment rule results?',
     options: [
       Option(option: 'Singleton',
           answer: false),
       Option(option: 'Session',
           answer: true),
       Option(option: 'Web',
           answer: false),
       Option(option: 'Permanent',
           answer:  false),
     ],),

   Question(
     id: 50,
     text: 'When you use advanced personalization what are the valid scopes for segment rule results?',
     options: [
       Option(option: 'Singleton',
           answer: false),
       Option(option: 'Session',
           answer: true),
       Option(option: 'Web',
           answer: false),
       Option(option: 'Permanent',
           answer:  true),
     ],),

   Question(
     id: 51,
     text: 'Choose the right deinition for the modulegen ant task',
     options: [
       Option(option: 'Generate sets of dependent extensions to quickly start new projects or create new applications',
           answer: true),
       Option(option: 'Generate a single dependent extension to quickly start new projects or create new applications',
           answer: false),
       Option(option: 'Generate new extensions based on extension templates',
           answer: false),
       Option(option: 'Generate new empty extensions',
           answer:  false),
     ],),


   Question(
     id: 52,
     text: 'Which of the following are out of the box point of services?',
     options: [
       Option(option: 'Factory',
           answer: false),
       Option(option: 'ServiceDesk',
           answer: false),
       Option(option: 'Store',
           answer: true),
       Option(option: 'Warehouse',
           answer:  true),
     ],),


   Question(
     id: 53,
     text: 'What attribute from the stock level item are mandatory?',
     options: [
       Option(option: 'A warehouse',
           answer: true),
       Option(option: 'A product model',
           answer: false),
       Option(option: 'A product code',
           answer: true),
       Option(option: 'A point of service',
           answer:  false),
     ],),

  ];






  bool checkAnswer(int questionIndex, int optionIndex, bool givenAnswer) {
    return givenAnswer == questionBank[questionIndex].options[optionIndex].answer ? true : false;
  }


}