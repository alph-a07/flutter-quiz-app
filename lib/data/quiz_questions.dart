import 'package:quiz_app/models/question.dart';

const questions = [
  Question(
    'What are the main building blocks of Flutter UIs?',
    [
      'Widgets',
      'Components',
      'Blocks',
      'Functions',
    ],
  ),
  Question(
    'How are Flutter UIs built?',
    [
      'By combining widgets in code',
      'By combining widgets in a visual editor',
      'By defining widgets in config files',
      'By using XCode for iOS and Android Studio for Android',
    ],
  ),
  Question(
    'What\'s the purpose of a StatefulWidget?',
    [
      'Update UI as data changes',
      'Update data as UI changes',
      'Ignore data changes',
      'Render UI that does not depend on data',
    ],
  ),
  Question(
    'Which widget should you try to use more often: StatelessWidget or StatefulWidget?',
    [
      'StatelessWidget',
      'StatefulWidget',
      'Both are equally good',
      'None',
    ],
  ),
  Question(
    'What happens if you change data in a StatelessWidget?',
    [
      'The UI is not updated',
      'The UI is updated',
      'The closest StatefulWidget is updated',
      'Any nested StatefulWidgets are updated',
    ],
  ),
  Question(
    'How should you update data inside of StatefulWidgets?',
    [
      'By calling setState()',
      'By calling updateData()',
      'By calling updateUI()',
      'By calling updateState()',
    ],
  ),
  Question(
    'What is the primary programming language used for Flutter development?',
    [
      'Dart',
      'Java',
      'Kotlin',
      'Swift',
    ],
  ),
  Question(
    'What is Flutter primarily used for?',
    [
      'Building natively compiled applications for mobile, web, and desktop from a single codebase',
      'Building server-side applications',
      'Creating AI models',
      'Managing databases',
    ],
  ),
  Question(
    'Which command is used to create a new Flutter project?',
    [
      'flutter create project_name',
      'flutter new project_name',
      'flutter init project_name',
      'flutter start project_name',
    ],
  ),
  Question(
    'How can you add a package dependency in a Flutter project?',
    [
      'By adding it to the pubspec.yaml file',
      'By adding it to the dependencies.txt file',
      'By adding it to the packages.json file',
      'By adding it to the build.gradle file',
    ],
  ),
  Question(
    'What is the function of the build() method in a Flutter widget?',
    [
      'It describes the part of the user interface represented by the widget',
      'It initializes the widget state',
      'It handles user input',
      'It connects the widget to the database',
    ],
  ),
  Question(
    'Which widget is used to create an immutable collection of widgets in Flutter?',
    [
      'Column',
      'Row',
      'ListView',
      'Container',
    ],
  ),
];
