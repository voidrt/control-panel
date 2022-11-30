import 'package:control_panel_flutter/screens/gestock_control_panel/cp_screen.dart';
import 'package:flutter/material.dart';

class NavRoutes {
  static const controlPanel = '/';

  static Map<String, Widget Function(BuildContext)> materialRoutes = {
    controlPanel: (ctx) => const GeStockScreen(),
  };
}
