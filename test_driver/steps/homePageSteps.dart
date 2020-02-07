import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';
import '../pages/home_page.dart';

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

class ISeeValue extends Then1WithWorld<String, FlutterWorld> {
  ISeeValue()
      : super(StepDefinitionConfiguration()..timeout = Duration(seconds: 10));

  @override
  Future<void> executeStep(String value) async {
    HomePage homePage = HomePage(world.driver);
    expectMatch(await homePage.getCounterValue(), value);
  }

  @override
  RegExp get pattern => RegExp(r"I see if the value is {string}");
}

class InitialStateOfApp extends GivenWithWorld<FlutterWorld> {
  InitialStateOfApp()
      : super(StepDefinitionConfiguration()..timeout = Duration(seconds: 10));

  @override
  Future<void> executeStep() async {
    //Instantiate homepage with world.driver as parameter for flutter driver object
    HomePage homePage = HomePage(world.driver);

    //expectMatch(await homePage.getCounterValue(), value);
  }

  @override
  RegExp get pattern => RegExp(r"I test the initial state of the app");
}
