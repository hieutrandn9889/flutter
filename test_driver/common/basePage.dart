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

  Future<void> waitForElements(elementFinder, time) async {
    await _driver.waitFor(find.text(elementFinder)).timeout(time);
  }

  Future<void> close() async {
    await _driver.close();
  }

  Future<void> scrollScreen(SerializableFinder finder, double dx, double dy, Duration duration) async {
    await _driver.scroll(finder, dx, dy, duration);
  }
}
