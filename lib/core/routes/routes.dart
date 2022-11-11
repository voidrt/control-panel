import 'package:control_panel_flutter/screens/tela_do_joao/widgets/control_panel.dart';
import 'package:flutter/material.dart';

class NavRoutes {
  static const controlPanel = '/';

  static Map<String, Widget Function(BuildContext)> materialRoutes = {
    controlPanel: (ctx) => const ControlPanel(),
  };
}
