import 'package:flutter_driver/flutter_driver.dart';
import '../common/basePage.dart';
import '../interface/homaPageUI.dart';

class HomePage extends BasePage {
  FlutterDriver _driver;
  final homePageUI = new HomePageUI();

  //Constructor
  HomePage(FlutterDriver driver) : super(driver) {
    this._driver = driver;
  }

  Future<String> getCounterValue() async {
    return this.getTextElements(homePageUI.txtCounter);
  }

  Future<String> getAlertContent() async {
    return this.getTextElements(homePageUI.txtAlert);
  }

  Future<String> getTitleContent() async {
    return this.getTextElements(homePageUI.txtTitle);
  }

  Future<void> clickBtnPlus() async {
    return this.clickElements(homePageUI.btnIncrement);
  }

  Future<void> clickAddBtn() async {
    return this.clickElements(homePageUI.btnAdd);
  }

  Future<void> clickSubtractButton() async {
    return this.clickElements(homePageUI.btnSubtract);
  }
}
