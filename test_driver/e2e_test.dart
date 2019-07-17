import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  group('Counter App', () {
    final counterTextFinder = find.byValueKey('counterText'); //key: ValueKey("counterText"),
    final buttonFinder = find.byTooltip('increment');// get ben main file   tooltip: 'increment',

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
  });
}