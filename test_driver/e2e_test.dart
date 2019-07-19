import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  group('Counter App', () {
    final counterTextFinder = find.byValueKey('counterText'); //key: ValueKey("counterText"),
    final buttonFinder      = find.byTooltip('increment');// get ben main file   tooltip: 'increment',
    final buttonAdd         = find.byValueKey('add');
    final buttonSubtract    = find.byValueKey('subtract');
    final alertText         = find.byValueKey('alert_text');
    final btnClose          = find.byValueKey('close_button');



    FlutterDriver driver;
    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });
    tearDownAll(() async {
      if (driver != null) {
        driver.close();
      }
    });
    test('starts at 0', () async {
      expect(await driver.getText(counterTextFinder), "0");
    });

    test('increments the counter', () async {
      await driver.tap(buttonFinder);
      expect(await driver.getText(counterTextFinder), "1");
      await driver.tap(buttonFinder);
      expect(await driver.getText(counterTextFinder), "2");
    });

    test('Test with alert window', () async {
      await driver.tap(buttonAdd);
      expect(await driver.getText(alertText), "Welcome to ExecuteAutomation 2");
     await driver.tap(btnClose);
      await driver.tap(buttonSubtract);
      expect(await driver.getText(counterTextFinder), "1");
    });
  });
}