import 'dart:async';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';
import 'package:glob/glob.dart';
import 'steps/homePageSteps.dart';
import 'hooks/hook.dart';
Future<void> main() {
  final config = FlutterTestConfiguration()
    ..features = [Glob(r"test_driver/features/**.feature")]
    ..reporters = [
      ProgressReporter(),
      TestRunSummaryReporter(),
      JsonReporter(path: './report.json')
    ] // you can include the "StdoutReporter()" without the message level parameter for verbose log information
    ..hooks = [
      HookExample(),
    ]// you can include "AttachScreenhotOnFailedStepHook()" to take a screenshot of each step failure and attach it to the world object
    ..stepDefinitions = [
      InitialStateOfApp(), 
      ClickPlus(), 
      ISeeValue(), 
      ClickSubtract()
    ]
    ..restartAppBetweenScenarios = true
    ..targetAppPath = "test_driver/bdd.dart"
    // ..buildFlavor = "staging" // uncomment when using build flavor and check android/ios flavor setup see android file android\app\build.gradle
    // ..targetDeviceId = "all" // uncomment to run tests on all connected devices or set specific device target id
    // ..tagExpression = "@smoke" // uncomment to see an example of running scenarios based on tag expressions
    ..exitAfterTestRun = true; // set to false if debugging to exit cleanly
  return GherkinRunner().execute(config);
}