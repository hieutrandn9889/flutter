import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';
import '../pages/homePage.dart';

class ClickPlus extends AndWithWorld<FlutterWorld> {
  ClickPlus()
      : super(StepDefinitionConfiguration()..timeout = Duration(seconds: 10));

  @override
  Future<void> executeStep() async {
    HomePage homePage = HomePage(world.driver);
    await homePage.clickBtnPlus();
  }

  @override
  RegExp get pattern => RegExp(r"I click the plus button");
}

class ClickAddBtn extends AndWithWorld<FlutterWorld> {
  ClickAddBtn()
      : super(StepDefinitionConfiguration()..timeout = Duration(seconds: 10));

  @override
  Future<void> executeStep() async {
    HomePage homePage = HomePage(world.driver);
    await homePage.clickAddBtn();
  }

  @override
  RegExp get pattern => RegExp(r"I click the add button");
}

class ClickSubtract extends AndWithWorld<FlutterWorld> {
  ClickSubtract()
      : super(StepDefinitionConfiguration()..timeout = Duration(seconds: 10));

  @override
  Future<void> executeStep() async {
    HomePage homePage = HomePage(world.driver);
    await homePage.clickSubtractButton();
  }

  @override
  RegExp get pattern => RegExp(r"I click subtract button");
}

class VerifyNumberDisplay extends Then1WithWorld<String, FlutterWorld> {
  VerifyNumberDisplay()
      : super(StepDefinitionConfiguration()..timeout = Duration(seconds: 10));

  @override
  Future<void> executeStep(String value) async {
    HomePage homePage = HomePage(world.driver);
    expectMatch(await homePage.getCounterValue(), value);
  }

  @override
  RegExp get pattern => RegExp(r"I verify number display {string}");
}

class VerifyAlertDisplay extends Then1WithWorld<String, FlutterWorld> {
  VerifyAlertDisplay()
      : super(StepDefinitionConfiguration()..timeout = Duration(seconds: 10));

  @override
  Future<void> executeStep(String value) async {
    HomePage homePage = HomePage(world.driver);
    expectMatch(await homePage.getAlertContent(), value);
  }

  @override
  RegExp get pattern => RegExp(r"I verify alert display {string}");
}

class VerifyTitletDisplay extends Then1WithWorld<String, FlutterWorld> {
  VerifyTitletDisplay()
      : super(StepDefinitionConfiguration()..timeout = Duration(seconds: 10));

  @override
  Future<void> executeStep(String value) async {
    HomePage homePage = HomePage(world.driver);
    expectMatch(await homePage.getTitleContent(), value);
  }

  @override
  RegExp get pattern => RegExp(r"I verify title display {string}");
}




class InitialStateOfApp extends GivenWithWorld<FlutterWorld> {
  InitialStateOfApp()
      : super(StepDefinitionConfiguration()..timeout = Duration(seconds: 10));

  @override
  Future<void> executeStep() async {
    //Instantiate homepage with world.driver as parameter for flutter driver object
    HomePage homePage = HomePage(world.driver);
    // expectMatch(await homePage.getCounterValue());
  }

  @override
  RegExp get pattern => RegExp(r"I test the initial state of the app");
}
