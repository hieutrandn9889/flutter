import 'package:flutter_driver/flutter_driver.dart';
import 'package:flutter_driver/src/driver/driver.dart';

class BasePage {
  FlutterDriver _driver;
  int time = 300;

  //Constructor
  BasePage(FlutterDriver driver) {
    this._driver = driver;
  }

  Future<void> clickElements(elementFinder) async {
    await _driver.tap(elementFinder);
  }

  Future<String> getTextElements(elementFinder) async {
    return await _driver.getText(elementFinder);
  }

  Future<void> typeElements(elementFinder, value) async {
    await _driver.tap(elementFinder);
    await _driver.enterText(value);
  }

  Future<void> verifyElements(elementFinder, time) async {
    await _driver.waitFor(elementFinder).timeout(time);
    await _driver.getText(elementFinder);
  }
}
