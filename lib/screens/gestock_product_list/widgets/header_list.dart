import 'package:control_panel_flutter/screens/gestock_product_list/widgets/header_tile.dart';
import 'package:control_panel_flutter/themes/colors.dart';
import 'package:flutter/material.dart';

class HeadersList extends StatelessWidget {
  const HeadersList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: ColorPalette.grey200,
        ),
      ),
      child: Row(
        children: const [
          HeaderTile(headerText: 'Data'),
          HeaderTile(headerText: 'Codigo de Barras'),
          HeaderTile(headerText: 'Codigo de Referencia'),
          HeaderTile(headerText: 'Largura (mm)'),
          HeaderTile(headerText: 'Comprimento (m)'),
        ],
      ),
    );
  }
}
