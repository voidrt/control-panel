import 'package:control_panel_flutter/screens/tela_do_joao/widgets/control_panel.dart';
import 'package:control_panel_flutter/themes/colors.dart';
import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ColorPalette.darkGrey400,
      body: ControlPanel(),
    );
  }
}
