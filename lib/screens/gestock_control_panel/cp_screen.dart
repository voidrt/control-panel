import 'package:control_panel_flutter/screens/gestock_control_panel/widgets/control_panel.dart';
import 'package:control_panel_flutter/screens/gestock_product_list/pl_screen.dart';
import 'package:control_panel_flutter/themes/colors.dart';
import 'package:flutter/material.dart';

class GeStockScreen extends StatelessWidget {
  const GeStockScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.background,
      body: LayoutBuilder(builder: (context, constraints) {
        return Column(
          children: [
            ControlPanel(
              constraints: constraints,
            ),
            ProductListScreen(
              constraints: constraints,
            ),
          ],
        );
      }),
    );
  }
}
