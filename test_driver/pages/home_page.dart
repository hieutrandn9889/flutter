import 'package:flutter_driver/flutter_driver.dart';
import '../common/basePage.dart';
import '../interface/homaPageUI.dart';

class HomePage extends BasePage {
  HomePageUI _homPageUI;
  FlutterDriver _driver;
  
  //Constructor
  HomePage(FlutterDriver driver) : super(null) {
    this._driver = driver;
  }

  Future<String> getCounterValue() async {
    return await getTextElements(_homPageUI.txtCounter);
  }

  // Future<void> clickBtnPlus() async {
  //   return await _driver.tap(_homPageUI.btnIncrement);
  // }

  // Future<void> clickSubtractButton() async {
  //   return _driver.tap(_homPageUI.btnSubtract);
  // }
}