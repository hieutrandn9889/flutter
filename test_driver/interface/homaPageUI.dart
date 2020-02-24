import 'package:flutter_driver/flutter_driver.dart';

class HomePageUI {
  final txtTitle      = find.byValueKey('titleText');
  final txtCounter    = find.byValueKey('counterText');
  final btnIncrement  = find.byTooltip('Increment');
  final btnAdd        = find.byValueKey("addBtn");
  final btnSubtract   = find.byValueKey("subtractBtn");
  final txtAlert      = find.byValueKey("alertText");
  final btnClose      = find.byValueKey("closeButton");
}
