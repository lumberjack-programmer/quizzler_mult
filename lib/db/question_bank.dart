import '../models/option_model.dart';
import '../models/question.dart';

class QuestionBank {


 final List<Question> questionBank = [
    Question(
        id: 1,
        text: 'When you initialize SAP Hybris from ant, what actions are executed?',
        options: [
          OptionModel(option: 'aborts all running cronjobs', answer: false),
          OptionModel(option: 'delete and recreate the database', answer: true),
          OptionModel(option: 'delete all tables', answer: false),
          OptionModel(option: 'import all project data', answer:  false),
        ],),
    Question(
      id: 2,
      text: 'The BTG module is used to ?',
      options: [
        OptionModel(option: 'personalize a web applications based on customers', answer: true),
        OptionModel(option: 'business to groups', answer: false),
        OptionModel(option: 'provides a upgraded version of the CMS cockpit', answer: false),
        OptionModel(option: 'add business targets accessible from the backoffice', answer:  false),
      ],),

   Question(
     id: 3,
     text: 'What ant target should you use to start working on a new B2C implementation ?',
     options: [
       OptionModel(option: 'ant installer -r b2c_acc', answer: false),
       OptionModel(option: 'ant extgen', answer: false),
       OptionModel(option: 'ant modulegen', answer: true),
       OptionModel(option: 'ant accelerator', answer:  false),
     ],),
   Question(
     id: 4,
     text: 'What Spring context has the larger scope ?',
     options: [
       OptionModel(option: 'web context', answer: false),
       OptionModel(option: 'core context', answer: true),
       OptionModel(option: 'shared context', answer: false),
       OptionModel(option: 'international context', answer:  false),
     ],),

   Question(
     id: 5,
     text: 'During an Impex import what will happen when the import process can’t ind a reference to an item type ?',
     options: [
       OptionModel(option: 'import process will fail and move onto the next file', answer: false),
       OptionModel(option: 'the value line would be ignored', answer: false),
       OptionModel(option: 'the value line would be saved and a new attempt would be made', answer: true),
       OptionModel(option: 'the value line would be saved and attached to an error log entry', answer:  false),
     ],),

   Question(
     id: 6,
     text: 'When loading available prices what is the price factory trying to match ?',
     options: [
       OptionModel(option: 'customer/customer group', answer: true),
       OptionModel(option: 'product/product group', answer: true),
       OptionModel(option: 'date range if any conigured', answer: true),
       OptionModel(option: 'promotion/promotion group', answer:  false),
     ],),




   Question(
     id: 7,
     text: 'What is true about the DefaultCMSComponentController controller?',
     options: [
       OptionModel(option: 'it will inject all attributes into the model', answer: false),
       OptionModel(option: 'it will inject all front-end attributes (non system) into the model', answer: true),
       OptionModel(option: 'it is used by default if no specific controller are implemented', answer: true),
       OptionModel(option: 'it should be avoided', answer:  false),
     ],),

   Question(
     id: 8,
     text: 'Which of the following components are deprecated?',
     options: [
       OptionModel(option: 'cockpit framework', answer: true),
       OptionModel(option: 'Jalo layer', answer: true),
       OptionModel(option: 'task engine', answer: false),
       OptionModel(option: 'service layer', answer:  false),
     ],),

   Question(
     id: 9,
     text: 'What is the correct way of configuring a new logger for the package com.hybhub.hybhubaddon?',
     options: [
       OptionModel(option: 'log4j.logger.com.hybhub.hybhubaddon = info', answer: false),
       OptionModel(option: 'log4j.logger.hybhub.name=com.hybhub.hybhubaddon\n'
           'log4j.logger.hybhub.level=info\nlog4j.logger.hybhub.appenderRef.stdout.ref=STDOUT', answer: false),
       OptionModel(option: 'log4j2.logger.hybhub.name=com.hybhub.hybhubaddon\n'
           'log4j2.logger.hybhub.level=info\nlog4j2.logger.hybhub.appenderRef.stdout.ref=STDOUT', answer: true),
       OptionModel(option: 'log4j2.logger.com.hybhub.hybhubaddon=info\n'
           'log4j2.logger.com.hybhub.hybhubaddon=STDOUT', answer:  false),
     ],),

   Question(
     id: 10,
     text: 'The OCC webservices are?',
     options: [
       OptionModel(option: 'restful API', answer: true),
       OptionModel(option: 'restless API', answer: false),
       OptionModel(option: 'soap API', answer: false),
       OptionModel(option: 'oAuth API', answer:  false),
     ],),

   Question(
     id: 11,
     text: 'What statements are wrong about converters?',
     options: [
       OptionModel(option: 'they all have the same bean parent abstractPopulatingConverter', answer: false),
       OptionModel(option: 'they contain a list of attributes to convert', answer: true),
       OptionModel(option: 'they contain a list a populators to call', answer: false),
       OptionModel(option: 'they are un-aware of the object type they are converting', answer:  true),
     ],),

   Question(
     id: 12,
     text: 'What statements are true about collections under item type definitions?',
     options: [
       OptionModel(option: 'a collection is comma-separated list of PKs', answer: true),
       OptionModel(option: 'collections are preferred over relations', answer: false),
       OptionModel(option: 'at runtime collections are loaded into a collection of objects', answer: true),
       OptionModel(option: 'collections can store as many objects as needed', answer:  false),
     ],),

   Question(
     id: 13,
     text: 'Which of the following definition is the correct one for unit tests?',
     options: [
       OptionModel(option: 'requires access to the database and need a running SAP Hybris',
           answer: false),
       OptionModel(option: 'requires access to the database and don’t need a running SAP Hybris',
           answer: false),
       OptionModel(option: 'does not require access to the database and don’t need a running SAP Hybris',
           answer: true),
       OptionModel(option: 'require access to the database and starts a transaction for each test',
           answer:  false),
     ],),

   Question(
     id: 14,
     text: 'When you synchronize a Media object from a Staged to an Online catalog what happens to the media ile?',
     options: [
       OptionModel(option: 'the Media file is referenced by the Online and Staged Media', answer: true),
       OptionModel(option: 'the Media file is copied to the Online data folder and referenced by the Online Media',
           answer: false),
       OptionModel(option: 'the Media file is moved to a shared folder and referenced by both Media',
           answer: false),
       OptionModel(option: 'the Media file is embedded inside the ile attribute and synchronize like all other attributes',
           answer:  false),
     ],),

   Question(
     id: 15,
     text: 'Select the existing Impex header mode',
     options: [
       OptionModel(option: 'INSERTED', answer: false),
       OptionModel(option: 'UPDATE_INSERT', answer: false),
       OptionModel(option: 'REMOVE', answer: true),
       OptionModel(option: 'DELETE', answer:  false),
     ],),

   Question(
     id: 16,
     text: ' Select the right definition for the facade layer',
     options: [
       OptionModel(option: 'builds a complex object using simple objects and using a step by step approach',
           answer: false),
       OptionModel(option: 'separates application’s concerns', answer: false),
       OptionModel(option: 'hides the complexities of the system and provides a simplified interface to the client',
           answer: true),
       OptionModel(option: 'add new functionality to an existing object without altering its structure',
           answer:  false),
     ],),

   Question(
     id: 17,
     text: 'How could you configure a new hot folder?',
     options: [
       OptionModel(option: 'from the HAC',
           answer: false),
       OptionModel(option: 'from the HMC', answer: false),
       OptionModel(option: 'from the import cockpit',
           answer: false),
       OptionModel(option: 'from a Spring config ile',
           answer:  true),
     ],),

   Question(
     id: 18,
     text: 'How do you create a new interceptor?',
     options: [
       OptionModel(option: 'declare it along with the item type definition',
           answer: false),
       OptionModel(option: 'provide an implementation of one of Interceptor interface', answer: true),
       OptionModel(option: 'run a system update',
           answer: true),
       OptionModel(option: 'add a Spring bean mapping the item type and the Interceptor implementation',
           answer:  false),
     ],),


   Question(
     id: 19,
     text: 'A checkout step has?',
     options: [
       OptionModel(option: 'checkoutGroup reference',
           answer: true),
       OptionModel(option: 'checkoutStepValidator reference', answer: true),
       OptionModel(option: 'transitions map',
           answer: true),
       OptionModel(option: 'progressBarId string',
           answer:  true),
     ],),

   Question(
     id: 20,
     text: 'What are are valid legacy cockpit areas?',
     options: [
       OptionModel(option: 'navigation',
           answer: true),
       OptionModel(option: 'item', answer: false),
       OptionModel(option: 'browser',
           answer: true),
       OptionModel(option: 'editor',
           answer:  true),
     ],),

   Question(
     id: 21,
     text: 'When running an initialization on one tenant SAP Hybris will?',
     options: [
       OptionModel(option: 'delete all tables',
           answer: false),
       OptionModel(option: 'delete all known tables', answer: false),
       OptionModel(option: 'delete all known tables starting with the tenant table prefix',
           answer: true),
       OptionModel(option: 'delete and recreate the database',
           answer:  false),
     ],),

   Question(
     id: 22,
     text: 'When creating a new item how do you generate a new primary key?',
     options: [
       OptionModel(option: 'using java.util.UUID.randomUUID()',
           answer: false),
       OptionModel(option: 'using the primaryKeyService', answer: false),
       OptionModel(option: 'primary keys creation is automatically handled by the database',
           answer: false),
       OptionModel(option: 'primary keys creation is automatically handled by the service layer',
           answer:  true),
     ],),

   Question(
     id: 23,
     text: 'What statements are wrong about extensions?',
     options: [
       OptionModel(option: 'they have to be inside the bin folder',
           answer: false),
       OptionModel(option: 'they need to have a dependency to yempty', answer: false),
       OptionModel(option: 'they can written using Groovy',
           answer: true),
       OptionModel(option: 'they are always automatically loaded',
           answer:  false),
     ],),

   Question(
     id: 24,
     text: 'Which item types exist?',
     options: [
       OptionModel(option: 'collectiontype',
           answer: true),
       OptionModel(option: 'enumtype', answer: true),
       OptionModel(option: 'atomictype',
           answer: true),
       OptionModel(option: 'listtype',
           answer:  false),
     ],),

   Question(
     id: 25,
     text: 'A customer segment could be executed in?',
     options: [
       OptionModel(option: 'optimized processing',
           answer: true),
       OptionModel(option: 'full processing', answer: true),
       OptionModel(option: 'jalo processing',
           answer: false),
       OptionModel(option: 'complete processing',
           answer:  false),
     ],),

   Question(
     id: 26,
     text: 'What statements are true about the SAP Hybris server?',
     options: [
       OptionModel(option: 'based on Apache Tomcat',
           answer: true),
       OptionModel(option: 'good for production', answer: true),
       OptionModel(option: 'compatible with EJB',
           answer: false),
       OptionModel(option: 'can be started from the command line',
           answer:  true),
     ],),

   Question(
     id: 27,
     text: 'Why a Spring MVC controller needs to return a String?',
     options: [
       OptionModel(option: 'to return it as an HTML page',
           answer: false),
       OptionModel(option: 'to load a view', answer: true),
       OptionModel(option: 'to load a servlet',
           answer: false),
       OptionModel(option: 'to load a model',
           answer:  false),
     ],),

   Question(
     id: 28,
     text: 'What features are available through the Order Management Module (formally OMS)?',
     options: [
       OptionModel(option: 'order splitting',
           answer: true),
       OptionModel(option: 'payment', answer: false),
       OptionModel(option: 'sourcing',
           answer: true),
       OptionModel(option: 'promotion engine',
           answer:  false),
     ],),


   Question(
     id: 29,
     text: 'Why do you need to define stop words for for your search configuration?',
     options: [
       OptionModel(option: 'to ignore configured words while searching',
           answer: true),
       OptionModel(option: 'to boost configured words while searching', answer: false),
       OptionModel(option: 'to stop the query after a configured word',
           answer: false),
       OptionModel(option: 'to split the query in two queries',
           answer:  false),
     ],),

   Question(
     id: 30,
     text: 'What are the two main components of the rule engine?',
     options: [
       OptionModel(option: 'rule processor',
           answer: true),
       OptionModel(option: 'rule matcher', answer: false),
       OptionModel(option: 'rule executor',
           answer: false),
       OptionModel(option: 'rule builder',
           answer:  true),
     ],),

////

   Question(
     id: 31,
     text: 'Why would you use classiication?',
     options: [
       OptionModel(option: 'to optimize Apache SOLR requests',
           answer: false),
       OptionModel(option: 'to have dynamic product features', answer: true),
       OptionModel(option: 'to speed up search',
           answer: false),
       OptionModel(option: 'to unify product and category attributes',
           answer:  false),
     ],),

   Question(
     id: 32,
     text: 'When you run an impex import query from the HAC with the default coniguration what statements are true?',
     options: [
       OptionModel(option: 'you are running distributed impexes',
           answer: false),
       OptionModel(option: 'you are using the service layer', answer: true),
       OptionModel(option: 'you are using the jalo layer',
           answer: false),
       OptionModel(option: 'import relaxed is activated',
           answer:  false),
     ],),

   Question(
     id: 33,
     text: 'Which of the following would be good uses for a SAP Hybris CronJob?',
     options: [
       OptionModel(option: 'synchronizing the stock level with an external warehouse once per day',
           answer: true),
       OptionModel(option: 'notify the System Administrator when the peak load on the server passes a critical point',
           answer: false),
       OptionModel(option: 'perform an inventory once per week at midnight',
           answer: true),
       OptionModel(option: 'any task that isn’t database related, cronjobs are designed to perform operating System tasks, notdatabase system tasks',
           answer:  false),
     ],),


   Question(
     id: 34,
     text: 'Content slots for page template are?',
     options: [
       OptionModel(option: 'place holder for CMS component',
           answer: true),
       OptionModel(option: 'place holder for JSP tags',
           answer: false),
       OptionModel(option: 'shared across all screens using the page template',
           answer: true),
       OptionModel(option: 'conigured on the JSP view page',
           answer:  false),
     ],),


   Question(
     id: 35,
     text: 'Is it possible to add new enumeration values by runtime?',
     options: [
       OptionModel(option: 'no',
           answer: false),
       OptionModel(option: 'yes if you are using JRebel',
           answer: false),
       OptionModel(option: 'yes if the enumeration is dynamic',
           answer: true),
       OptionModel(option: 'yes if the enumeration is a subtype of the HybrisEnumValue class',
           answer:  true),
     ],),


   Question(
     id: 36,
     text: 'What a POS is ?',
     options: [
       OptionModel(option: 'a warehouse',
           answer: false),
       OptionModel(option: 'a physical store',
           answer: true),
       OptionModel(option: 'a web store',
           answer: false),
       OptionModel(option: 'a geolocalization service',
           answer:  false),
     ],),

   Question(
     id: 37,
     text: 'What statements are wrong about Backoffice widgets?',
     options: [
       OptionModel(option: 'widget can extend each other',
           answer: false),
       OptionModel(option: 'widget ids must be unique or the compilation fails',
           answer: true),
       OptionModel(option: 'views are implemented using JSP tags',
           answer: true),
       OptionModel(option: 'widgets can have parameters',
           answer:  false),
     ],),

   Question(
     id: 38,
     text: 'When writing unit tests how should you simulate pojo dependencies to external services, facades?',
     options: [
       OptionModel(option: 'the test class should extend HybrisUnitTests',
           answer: false),
       OptionModel(option: 'the test class should extend ServicelayerTest',
           answer: false),
       OptionModel(option: 'use Mockito to stub dependencies',
           answer: true),
       OptionModel(option: 'wrap all tests inside a transaction',
           answer:  false),
     ],),

   Question(
     id: 39,
     text: 'What is the notiication framework used for?',
     options: [
       OptionModel(option: 'notify cockpit users',
           answer: false),
       OptionModel(option: 'notify customers',
           answer: true),
       OptionModel(option: 'notify administrators',
           answer: false),
       OptionModel(option: 'facade for the event service',
           answer:  false),
     ],),

   Question(
     id: 40,
     text: 'What statements are true about stock levels?',
     options: [
       OptionModel(option: 'the stock service can check stock levels across multiple warehouses',
           answer: false),
       OptionModel(option: 'a single warehouse can contain multiple stock levels for the same product',
           answer: true),
       OptionModel(option: 'a base store is attached to a single warehouse',
           answer: false),
       OptionModel(option: 'a product can be sold even if it has no stock',
           answer:  true),
     ],),

   Question(
     id: 41,
     text: 'The CS cockpit was designed for?',
     options: [
       OptionModel(option: 'customer segment management',
           answer: false),
       OptionModel(option: 'order life cycles management',
           answer: true),
       OptionModel(option: ' css rendering management',
           answer: false),
       OptionModel(option: 'customer security management',
           answer:  true),
     ],),

   Question(
     id: 42,
     text: 'The CS cockpit was designed for?',
     options: [
       OptionModel(option: 'customer segment management',
           answer: false),
       OptionModel(option: 'order life cycles management',
           answer: true),
       OptionModel(option: 'css rendering management',
           answer: false),
       OptionModel(option: 'customer security management',
           answer:  false),
     ],),

   Question(
     id: 43,
     text: 'SAP Hybris semi-session failover mechanism allows to?',
     options: [
       OptionModel(option: 'automatically redirected users to the login page of a new node when on node goes down',
           answer: false),
       OptionModel(option: 'to transfer all sessions of the failing node to other available nodes without loss of data',
           answer: true),
       OptionModel(option: 'to always have all sessions replicated on every nodes',
           answer: false),
       OptionModel(option: 'to automatically redirect users to a temporary page',
           answer:  false),
     ],),

   Question(
     id: 44,
     text: 'What service should you use to save an model?',
     options: [
       OptionModel(option: 'persistenceService',
           answer: false),
       OptionModel(option: 'jaloService',
           answer: false),
       OptionModel(option: 'serviceLayerService',
           answer: false),
       OptionModel(option: 'modelService',
           answer:  true),
     ],),


   Question(
     id: 45,
     text: 'If you are testing a Flexible Search Restriction, the user you are running the query as?',
     options: [
       OptionModel(option: 'should be admin',
           answer: false),
       OptionModel(option: 'should be lexiblesearchquery',
           answer: false),
       OptionModel(option: 'should be a member of the searchquery group',
           answer: false),
       OptionModel(option: 'should not be a member of the admin group',
           answer:  true),
     ],),

   Question(
     id: 46,
     text: 'With default coniguration when you load a model item with the model service (for examples product model).What is automatically loaded inside the object?',
     options: [
       OptionModel(option: 'nothing, all attributes are lazy loaded',
           answer: true),
       OptionModel(option: 'only literal values',
           answer: false),
       OptionModel(option: 'only reference values',
           answer: false),
       OptionModel(option: 'all',
           answer:  false),
     ],),

   // Mock exam 3

   Question(
     id: 47,
     text: 'Dynamic forms are used to?',
     options: [
       OptionModel(option: 'Automatically generates html forms from an Hybris model object',
           answer: false),
       OptionModel(option: 'Executes dynamic actions on attributes, sections and tabs when a model property changes',
           answer: true),
       OptionModel(option: 'Executes dynamic actions on dynamic attributes based on the spring actions attached to the model',
           answer: false),
       OptionModel(option: 'Automatically saves input data when the user ills a form from the accelerator',
           answer:  false),
     ],),



   Question(
     id: 48,
     text: 'When you use advanced personalization what are the valid scopes for segment rule results?',
     options: [
       OptionModel(option: 'Singleton',
           answer: false),
       OptionModel(option: 'Session',
           answer: true),
       OptionModel(option: 'Web',
           answer: false),
       OptionModel(option: 'Permanent',
           answer:  true),
     ],),

   Question(
     id: 49,
     text: 'Choose the right deinition for the modulegen ant task',
     options: [
       OptionModel(option: 'Generate sets of dependent extensions to quickly start new projects or create new applications',
           answer: true),
       OptionModel(option: 'Generate a single dependent extension to quickly start new projects or create new applications',
           answer: false),
       OptionModel(option: 'Generate new extensions based on extension templates',
           answer: false),
       OptionModel(option: 'Generate new empty extensions',
           answer:  false),
     ],),


   Question(
     id: 50,
     text: 'Which of the following are out of the box point of services?',
     options: [
       OptionModel(option: 'Factory',
           answer: false),
       OptionModel(option: 'ServiceDesk',
           answer: false),
       OptionModel(option: 'Store',
           answer: true),
       OptionModel(option: 'Warehouse',
           answer:  true),
     ],),


   Question(
     id: 51,
     text: 'What attribute from the stock level item are mandatory?',
     options: [
       OptionModel(option: 'A warehouse',
           answer: true),
       OptionModel(option: 'A product model',
           answer: false),
       OptionModel(option: 'A product code',
           answer: true),
       OptionModel(option: 'A point of service',
           answer:  false),
     ],),


   Question(
     id: 52,
     text: 'What is the ant command used to generate a new backoice extension ?',
     options: [
       OptionModel(option: 'ant modulegen',
           answer: false),
       OptionModel(option: 'ant ybackoicegen',
           answer: false),
       OptionModel(option: 'ant extgen',
           answer: true),
       OptionModel(option: 'ant extensiongen',
           answer:  false),
     ],),

   Question(
     id: 53,
     text: 'Which of the following language are available to write dynamic form scripts?',
     options: [
       OptionModel(option: 'beanshell',
           answer: true),
       OptionModel(option: 'groovy',
           answer: true),
       OptionModel(option: 'spel',
           answer: true),
       OptionModel(option: 'javascript',
           answer:  true),
     ],),

   Question(
     id: 54,
     text: 'What is the correct way to create a new cockpit ?',
     options: [
       OptionModel(option: 'add a new line in the xml conig ile for cockpit (cockpits.xml)',
           answer: false),
       OptionModel(option: 'create a new cockpit model from the hac (impex) or the hmc',
           answer: false),
       OptionModel(option: 'generate a new extension from ycockpit',
           answer: true),
       OptionModel(option: 'run ant cockpitgen',
           answer:  false),
     ],),


   Question(
     id: 55,
     text: 'Inside the coniguration folder you have a ile called local_tenant_all.properties, what is it ?',
     options: [
       OptionModel(option: 'a property ile for all tenants',
           answer: false),
       OptionModel(option: 'a property ile for the all tenant',
           answer: true),
       OptionModel(option: 'a property ile for the master tenant',
           answer: false),
       OptionModel(option: 'none of the above',
           answer:  false),
     ],),

   Question(
     id: 56,
     text: 'Why would you use a widget virtual socket rather than a widget regular socket',
     options: [
       OptionModel(option: 'to add a socket at runtime',
           answer: true),
       OptionModel(option: 'to connect more than one output or input',
           answer: false),
       OptionModel(option: 'to to override an existing socket',
           answer: false),
       OptionModel(option: 'none of the above',
           answer:  false),
     ],),

   Question(
     id: 57,
     text: 'What statements are true about the widget application context ?',
     options: [
       OptionModel(option: 'it belongs to the CS cockpit',
           answer: false),
       OptionModel(option: 'it offers auto-reload capabilities',
           answer: true),
       OptionModel(option: 'it is a child of the web application context',
           answer: true),
       OptionModel(option: 'none of the above',
           answer:  false),
     ],),

   Question(
     id: 58,
     text: 'Dynamic forms can perform actions on which of the following elements?',
     options: [
       OptionModel(option: 'spring bean',
           answer: false),
       OptionModel(option: 'enumeration',
           answer: false),
       OptionModel(option: 'backoice orchestrator',
           answer: false),
       OptionModel(option: 'none of the above',
           answer:  true),
     ],),


   Question(
     id: 59,
     text: 'What statements are true about a new extension created from the ycockpit template?',
     options: [
       OptionModel(option: 'it has only one perspective',
           answer: true),
       OptionModel(option: 'it has no perspective',
           answer: false),
       OptionModel(option: 'it creates a new context path based on the name of your extension',
           answer: true),
       OptionModel(option: 'it creates an admin user to access your cockpit',
           answer:  false),
     ],),

   Question(
     id: 60,
     text: 'A cockpit perspective is composed of which of the following elements ?',
     options: [
       OptionModel(option: 'a navigation area',
           answer: true),
       OptionModel(option: 'a browser area',
           answer: true),
       OptionModel(option: 'an editor area',
           answer: true),
       OptionModel(option: 'a product area',
           answer:  false),
     ],),

   Question(
     id: 61,
     text: 'What statement(s) are true about cockpit wizards ?',
     options: [
       OptionModel(option: 'it guides users through complex item creation',
           answer: true),
       OptionModel(option: 'it is used by the admin user only',
           answer: false),
       OptionModel(option: 'wizards can be conigured with a ZK editor',
           answer: false),
       OptionModel(option: 'wizards are part of the backoice framework not the cockpit framework',
           answer:  false),
     ],),


   Question(
     id: 62,
     text: 'Exam: Where JSR 303 standard is used? (might be in option impl)',
     options: [
       OptionModel(option: 'Dynamic forms',
           answer: false),
       OptionModel(option: 'Validation',
           answer: true),
       OptionModel(option: 'SSO',
           answer: false),
       OptionModel(option: 'None of above',
           answer: false),
     ],),

   Question(
     id: 63,
     text: 'Exam: You need to change the Login Form URL of your Accelerator-based storefront. Where can you modify the Spring Security config?',
     options: [
       OptionModel(option: 'In the OAuth2 extension',
           answer: false),
       OptionModel(option: 'In your storefront extension',
           answer: true),
       OptionModel(option: 'In an addon for the storefront extension',
           answer: true),
       OptionModel(option: 'In the yacceleratorstorefront extension',
           answer: false),
     ],),

   Question(
     id: 64,
     text: 'Exam: What is needed to add a new language bundle?',
     options: [
       OptionModel(option: 'language item',
           answer: true),
       OptionModel(option: 'add languagepack.zip via ant customize',
           answer: true),
       OptionModel(option: 'server restart',
           answer: true),
       OptionModel(option: 'none of above',
           answer:  false),
     ],),

   Question(
     id: 65,
     text: 'Exam: What configuration file has the highest priority?',
     options: [
       OptionModel(option: 'local.properties from the config extension',
           answer: true),
       OptionModel(option: 'project.properties from the platform extension',
           answer: false),
       OptionModel(option: 'advanced.properties from the platform extension',
           answer: false),
       OptionModel(option: 'local.properties from the custom extension',
           answer:  false),
     ],),


   Question(
     id: 66,
     text: 'Exam: Which changes take an effect if Hybris is started without "ant clean all" / "ant all"',
     options: [
       OptionModel(option: 'local.properties (no build)',
           answer: true),
       OptionModel(option: 'Adding something to already defined spring bean',
           answer: true),
       OptionModel(option: 'localextensions.xml (ant clean all)',
           answer: false),
       OptionModel(option: 'removing extension from localextensions.xml',
           answer:  false),
     ],),

   Question(
     id: 67,
     text: 'Exam: Which main phases there are during a build:',
     options: [
       OptionModel(option: 'Preparation',
           answer: true),
       OptionModel(option: 'Dependency update',
           answer: true),
       OptionModel(option: 'Extension building',
           answer: true),
       OptionModel(option: 'None of above',
           answer:  false),
     ],),

   Question(
     id: 68,
     text: 'Exam: What can you do with extension packs?',
     options: [
       OptionModel(option: 'Identify your custom versioned software to combine with SAP Commerce during installation.',
           answer: false),
       OptionModel(option: 'Bundle the set of overriding configuration properties that will be used during deployment.',
           answer: false),
       OptionModel(option: 'Identify more versioned software artifacts to combine with SAP Commerce during installation.',
           answer: true),
       OptionModel(option: 'Identify list of extension packs to combine with SAP Commerce during installation.',
           answer:  true),
     ],),

   Question(
     id: 69,
     text: 'When implementing a new payment provider, what is the most important ?',
     options: [
       OptionModel(option: 'requests should be done using SSL encryption',
           answer: false),
       OptionModel(option: 'sensitive attribute should be encrypted',
           answer: false),
       OptionModel(option: 'enforce PCI compliance rules',
           answer: true),
       OptionModel(option: 'use HOP over SOP',
           answer:  false),
     ],),

   Question(
     id: 70,
     text: 'What are the new features of Hybris V6 compared to V5?',
     options: [
       OptionModel(option: 'backoffice',
           answer: true),
       OptionModel(option: 'Yaas integration',
           answer: true),
       OptionModel(option: 'rule engine',
           answer: true),
       OptionModel(option: 'smart edit',
           answer:  true),
     ],),

   Question(
     id: 71,
     text: 'hat makes a B2B implementation diferent than a B2C?',
     options: [
       OptionModel(option: 'B2B needs to manage customer credit',
           answer: true),
       OptionModel(option: 'B2C needs to integrate customers organization',
           answer: false),
       OptionModel(option: 'B2B most likely will ask customer to login before they can access the catalog',
           answer: true),
       OptionModel(option: 'B2B doesn’t integrate payment',
           answer:  false),
     ],),

   Question(
     id: 72,
     text: 'What is de the default password encryption?',
     options: [
       OptionModel(option: 'none',
           answer: false),
       OptionModel(option: 'md5',
           answer: false),
       OptionModel(option: 'sha-512',
           answer: false),
       OptionModel(option: 'pbkdf2',
           answer:  true),
     ],),


   Question(
     id: 73,
     text: 'How can you create a new promotion rule?',
     options: [
       OptionModel(option: 'from the backoffice by using a template',
           answer: true),
       OptionModel(option: 'from the hmc using the appropriate wizard',
           answer: false),
       OptionModel(option: 'from the backoffice from scratch',
           answer: true),
       OptionModel(option: 'from ant using the promogen target',
           answer:  false),
     ],),


   Question(
     id: 74,
     text: 'What are OCC v2 new features?',
     options: [
       OptionModel(option: 'stateless',
           answer: true),
       OptionModel(option: 'stateful',
           answer: true),
       OptionModel(option: 'restful',
           answer: false),
       OptionModel(option: 'xml or json response format',
           answer:  false),
     ],),

   Question(
     id: 75,
     text: 'In SAP Hybris 6.2 what is the recommended to have promotions',
     options: [
       OptionModel(option: 'the promotion engine',
           answer: true),
       OptionModel(option: 'the promotion module',
           answer: false),
       OptionModel(option: 'the jalo layer',
           answer: false),
       OptionModel(option: 'none of the above',
           answer:  false),
     ],),


   Question(
     id: 76,
     text: 'When 2 promotions (promotion engine) have the same priority how does SAP Hybris order them',
     options: [
       OptionModel(option: 'alphabetically',
           answer: false),
       OptionModel(option: 'can’t be determined',
           answer: true),
       OptionModel(option: 'date of creation',
           answer: false),
       OptionModel(option: 'uuid',
           answer:  false),
     ],),



   Question(
     id: 77,
     text: 'What statements are true about the rule compiler ?',
     options: [
       OptionModel(option: 'when compiling it uses the IR data structure',
           answer: true),
       OptionModel(option: 'it is used to transform promotion rules into rules',
           answer: false),
       OptionModel(option: 'it turns source rules into executables',
           answer: true),
       OptionModel(option: 'none of the above',
           answer:  false),
     ],),


   Question(
     id: 78,
     text: 'How do you define a new RAO object ?',
     options: [
       OptionModel(option: 'create new item type in a items.xml ile',
           answer: false),
       OptionModel(option: 'create new rao type in a items.xml ile',
           answer: false),
       OptionModel(option: 'create new bean in a beans.xml ile',
           answer: true),
       OptionModel(option: 'create new rao in a rao.xml ile',
           answer:  false),
     ],),

   Question(
     id: 79,
     text: 'When creating a new condition translator what are the available conditions ?',
     options: [
       OptionModel(option: 'RuleIrTrueCondition',
           answer: true),
       OptionModel(option: 'RuleIrFalseCondition',
           answer: true),
       OptionModel(option: 'RuleIrGroupCondition',
           answer: true),
       OptionModel(option: 'RuleIrAttributeCondition',
           answer:  true),
     ],),

   Question(
     id: 80,
     text: 'Where should you manage the visibility restrictions of an existing CMS page ?',
     options: [
       OptionModel(option: 'hac',
           answer: false),
       OptionModel(option: 'hmc',
           answer: true),
       OptionModel(option: 'CMS cockpit',
           answer: false),
       OptionModel(option: 'none of the above',
           answer:  false),
     ],),

   Question(
     id: 81,
     text: 'What statements are true about flexible search restrictions ?',
     options: [
       OptionModel(option: 'they only apply for anonymous users',
           answer: false),
       OptionModel(option: 'they never apply for admingroup users',
           answer: true),
       OptionModel(option: 'you cannot disable restrictions',
           answer: false),
       OptionModel(option: 'they target one item type',
           answer:  true),
     ],),

   Question(
     id: 82,
     text: 'Tenants let you choose a specific ?',
     options: [
       OptionModel(option: 'set of extensions',
           answer: true),
       OptionModel(option: 'time zone',
           answer: true),
       OptionModel(option: 'currency',
           answer: true),
       OptionModel(option: 'database',
           answer:  true),
     ],),

   Question(
     id: 83,
     text: '',
     options: [
       OptionModel(option: 'yes, if you have at least 2 solr servers',
           answer: false),
       OptionModel(option: 'yes, if you have at least 2 tenants',
           answer: false),
       OptionModel(option: 'yes, if you create a new index',
           answer: true),
       OptionModel(option: 'no, it’s not possible',
           answer:  false),
     ],),

   Question(
     id: 84,
     text: 'To create a new CMS restriction type (for example loyal customers with at least 3 past orders) what do you need to do ?',
     options: [
       OptionModel(option: 'create a new item type for your restriction extending AbstractRestriction',
           answer: true),
       OptionModel(option: 'create an implementation of de.hybris.platform.cms2.servicelayer.services.evaluator.CMSRestrictionEvaluator with the restriction logic',
           answer: true),
       OptionModel(option: 'create a new spring bean for my restriction evaluator',
           answer: true),
       OptionModel(option: 'create a new spring bean to map my evaluator with my item type',
           answer:  true),
     ],),

   Question(
     id: 85,
     text: 'How many item types can a single cache region handle ?',
     options: [
       OptionModel(option: 'only one',
           answer: false),
       OptionModel(option: 'as many as you need',
           answer: false),
       OptionModel(option: 'cache regions only cache flexible search queries',
           answer: true),
       OptionModel(option: 'none of the above',
           answer:  false),
     ],),

   Question(
     id: 86,
     text: 'Choose the best deinition for the FIFO eviction strategy ?',
     options: [
       OptionModel(option: 'objects are evicted based on their age, newest irst',
           answer: false),
       OptionModel(option: 'objects are evicted based on their io use, lowest irst',
           answer: false),
       OptionModel(option: 'objects are evicted based on their size, biggest irst',
           answer: false),
       OptionModel(option: 'none of the above',
           answer:  true),
     ],),

   Question(
     id: 87,
     text: 'What can you do with the ASM ?',
     options: [
       OptionModel(option: 'create a cart in behalf of a customer',
           answer: false),
       OptionModel(option: 'create a new product from a responsive storefront',
           answer: false),
       OptionModel(option: 'manage a customer account from my account section in behalf of a customer',
           answer: false),
       OptionModel(option: 'assign an anonymous cart to a customer',
           answer:  false),
     ],),


   Question(
     id: 88,
     text: 'From my custom backoffice perspective, I want the product description to be filled with the product name automatically if empty.',
     options: [
       OptionModel(option: 'create a new prepare interceptor',
           answer: false),
       OptionModel(option: 'create a new dynamic form for the backoffice',
           answer: true),
       OptionModel(option: 'customize the ProductModel constructor',
           answer: false),
       OptionModel(option: 'create a cron job to scan products',
           answer:  false),
     ],),


   Question(
     id: 89,
     text: 'How does SAP Hybris redirect a URL is redirect to the correct store front ?',
     options: [
       OptionModel(option: 'using different port',
           answer: false),
       OptionModel(option: 'stores have URL patterns',
           answer: true),
       OptionModel(option: 'websites have URL patterns',
           answer: false),
       OptionModel(option: 'using different ips',
           answer:  false),
     ],),


   Question(
     id: 90,
     text: 'Where can you define a new socket for a widget ?',
     options: [
       OptionModel(option: 'myextension-widgets.xml',
           answer: true),
       OptionModel(option: 'myextension-backoice.xml',
           answer: false),
       OptionModel(option: 'mywidget/definition.xml',
           answer: true),
       OptionModel(option: '*mywidget/config.xml',
           answer:  false),
     ],),

   Question(
     id: 91,
     text: 'What functionality should you use to periodically check for product out of stock ?',
     options: [
       OptionModel(option: 'task service',
           answer: false),
       OptionModel(option: 'cronjob service',
           answer: true),
       OptionModel(option: 'stockCheck service',
           answer: false),
       OptionModel(option: 'productSentinel service',
           answer:  false),
     ],),


   Question(
     id: 92,
     text: 'Can you override a content slot deined in a page template when you are editing a page ?',
     options: [
       OptionModel(option: 'yes, if the slot is empty',
           answer: false),
       OptionModel(option: 'yes, if you are editing another page template extending the irst one',
           answer: false),
       OptionModel(option: 'yes',
           answer: true),
       OptionModel(option: 'no, page template slots are meant to be shared across pages',
           answer:  false),
     ],),


   Question(
     id: 93,
     text: 'What statements are true about macrodefs ?',
     options: [
       OptionModel(option: 'they are part of the build framework',
           answer: true),
       OptionModel(option: 'they can add build custom logic logic before or after each build step',
           answer: true),
       OptionModel(option: 'they can be defined in the extensioninfo.xml',
           answer: false),
       OptionModel(option: 'none of the above',
           answer:  false),
     ],),

   Question(
     id: 94,
     text: 'What version(s) of OCC is activated by default ?',
     options: [
       OptionModel(option: 'V1',
           answer: false),
       OptionModel(option: 'v2',
           answer: true),
       OptionModel(option: 'V1 and V2',
           answer: false),
       OptionModel(option: 'none',
           answer:  false),
     ],),

   Question(
     id: 95,
     text: 'Choose the right definition for a converter ?',
     options: [
       OptionModel(option: 'create new instance of model objects and call populators to populate them',
           answer: false),
       OptionModel(option: 'create new instance of data objects and call populators to populate them',
           answer: true),
       OptionModel(option: 'populate a data object attributes from a model object',
           answer: false),
       OptionModel(option: 'populate a model object attributes from a data object',
           answer:  false),
     ],),


   Question(
     id: 96,
     text: 'If one item attribute contains sensitive data what should you do ?',
     options: [
       OptionModel(option: 'use password encrypted attribute',
           answer: false),
       OptionModel(option: 'use xss encoder',
           answer: false),
       OptionModel(option: 'use secured attribute protection',
           answer: false),
       OptionModel(option: 'use transparent attribute encryption',
           answer:  true),
     ],),

   Question(
     id: 97,
     text: 'In a multi tenant system how could you be sure that a Spring bean is unique across diferent tenants ?',
     options: [
       OptionModel(option: 'use the tenant scope',
           answer: false),
       OptionModel(option: 'use the default singleton scope',
           answer: false),
       OptionModel(option: 'use the prototype scope',
           answer: false),
       OptionModel(option: 'none of the above',
           answer:  true),
     ],),


   Question(
     id: 98,
     text: 'facets could be of which type ?',
     options: [
       OptionModel(option: 'MultiSelectAnd',
           answer: true),
       OptionModel(option: 'MultiSelectOr',
           answer: true),
       OptionModel(option: 'Reine',
           answer: true),
       OptionModel(option: 'Define',
           answer:  false),
     ],),

   Question(
     id: 99,
     text: 'Which of the following item types are valid B2B item types ?',
     options: [
       OptionModel(option: 'B2BUnit',
           answer: true),
       OptionModel(option: 'B2BBudget',
           answer: true),
       OptionModel(option: 'B2BCostCenter',
           answer: true),
       OptionModel(option: 'B2BCustomer',
           answer:  true),
     ],),


   Question(
     id: 100,
     text: 'Give the correct definition of cross site scripting ?',
     options: [
       OptionModel(option: 'malicious code is sent to and executed by end users’ web browsers',
           answer: true),
       OptionModel(option: 'malicious code is sent to and executed by SAP Hybris',
           answer: false),
       OptionModel(option: 'malicious code is sent to and executed by the database',
           answer: false),
       OptionModel(option: 'malicious code is sent to and executed by the JSP page',
           answer:  false),
     ],),


   Question(
     id: 101,
     text: 'How can you install an SAP license for SAP Hybris ',
     options: [
       OptionModel(option: 'ant -install /home/hybris/license.txt',
           answer: false),
       OptionModel(option: 'ant licenceInstall /home/hybris/license.txt',
           answer: false),
       OptionModel(option: './license.sh -install /home/hybris/license.txt',
           answer: true),
       OptionModel(option: './licenseInstall.sh /home/hybris/license.txt',
           answer:  false),
     ],),


   Question(
     id: 102,
     text: 'Why would you run a dependent synchronization ?',
     options: [
       OptionModel(option: 'your catalogs extend each other',
           answer: false),
       OptionModel(option: 'you want to avoid cross references between catalog versions',
           answer: true),
       OptionModel(option: 'you want to have cross references between catalog versions',
           answer: false),
       OptionModel(option: 'none of the above',
           answer:  false),
     ],),


   Question(
     id: 103,
     text: 'What happen when you update SAP Hybris ?',
     options: [
       OptionModel(option: 'it updates items type code according to items.xml files',
           answer: false),
       OptionModel(option: 'it imports all impex files',
           answer: false),
       OptionModel(option: 'it drops database tables if item type are not defined anymore',
           answer: false),
       OptionModel(option: 'none of the above',
           answer:  true),
     ],),

   Question(
     id: 104,
     text: 'After adding a new attribute into the product item type deinition, what is needed to forward this attribute into the SOLR index ?',
     options: [
       OptionModel(option: 'nothing the build process would generate a value resolver based on the attribute type and map it with SOLR',
           answer: false),
       OptionModel(option: 'you must create a new value resolver',
           answer: false),
       OptionModel(option: 'you must create a new SolrIndexedProperty item',
           answer: true),
       OptionModel(option: 'none of the above',
           answer:  false),
     ],),

   Question(
     id: 105,
     text: 'Which of the following are available accelerators within SAP Hybris 6.2 ?',
     options: [
       OptionModel(option: 'China accelerator',
           answer: true),
       OptionModel(option: 'B2B accelerator',
           answer: true),
       OptionModel(option: 'Telco accelerator',
           answer: true),
       OptionModel(option: 'Travel accelerator',
           answer:  true),
     ],),

   Question(
     id: 106,
     text: 'What is the best way to start a new project from an accelerator ?',
     options: [
       OptionModel(option: 'ant extgen nameOfTheAccelerator',
           answer: false),
       OptionModel(option: 'ant modulegen nameOfTheAccelerator',
           answer: true),
       OptionModel(option: './install.sh -i nameOfTheAccelerator',
           answer: false),
       OptionModel(option: './install.sh -p nameOfTheAccelerator',
           answer:  false),
     ],),


   Question(
     id: 107,
     text: 'What steps are required to create a new wizard for a legacy cockpit ?',
     options: [
       OptionModel(option: 'defines a new Spring bean for the wizard de.hybris.platform.cockpit.wizards.Wizard',
           answer: true),
       OptionModel(option: 'defines a new Spring bean for the wizard configurationde.hybris.platform.cockpit.wizards.generic.CreateWizardConiguration',
           answer: true),
       OptionModel(option: 'create zul iles for each wizard’s pages',
           answer: true),
       OptionModel(option: 'defines a custom WizardPageController',
           answer:  false),
     ],),

 ];







 // Question(
 // id: ,
 // text: '',
 // options: [
 // OptionModel(option: '',
 // answer: false),
 // OptionModel(option: '',
 // answer: false),
 // OptionModel(option: '',
 // answer: false),
 // OptionModel(option: '',
 // answer:  false),
 // ],),


  bool checkAnswer(int questionIndex, int optionIndex, bool givenAnswer) {
    return givenAnswer == questionBank[questionIndex].options[optionIndex].answer ? true : false;
  }


}