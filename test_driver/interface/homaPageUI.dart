import 'package:flutter_driver/flutter_driver.dart';

class HomePageUI {
  final txtCounter    = find.byValueKey('counterText');
  final btnIncrement  = find.byTooltip('Increment');
  final btnAdd        = find.byValueKey("add");
  final btnSubtract   = find.byValueKey("subtract");
  final txtAlert      = find.byValueKey("alertText");
  final btnClose      = find.byValueKey("closeButton");
}
