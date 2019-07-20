import 'package:flutter_driver/flutter_driver.dart';

class HomePageUI {
  final txtCounter    = find.byValueKey('counterText');
  final btnIncrement  = find.byTooltip('Increment');
  final btnAdd        = find.byValueKey("add");
  final btnSubtract   = find.byValueKey("subtract");
  final txtAlert      = find.byValueKey("alert_text");
  final btnClose      = find.byValueKey("close_button");
  
}
