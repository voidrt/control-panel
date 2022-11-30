import 'package:control_panel_flutter/screens/gestock_control_panel/widgets/form_grid_view.dart';
import 'package:control_panel_flutter/themes/colors.dart';
import 'package:control_panel_flutter/themes/paddings.dart';
import 'package:flutter/material.dart';

class ControlPanel extends StatelessWidget {
  const ControlPanel({
    Key? key,
    required this.constraints,
  }) : super(key: key);

  final BoxConstraints constraints;

  @override
  Widget build(BuildContext context) {
    final List<String> formFieldLabels = [
      'Escaneie o produto: ',
      'Largura: ',
      'Comprimento: ',
      'Codigo: ',
      'Filtrar por codigo: ',
      'Quantidade: ',
    ];
    return Expanded(
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.all(PaddingMeasure.defaultSize),
            width: constraints.maxWidth,
            decoration: BoxDecoration(
              border: Border.all(
                width: 1.5,
                color: ColorPalette.darkGrey50,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(PaddingMeasure.defaultSize),
              child: FormFieldGrid(
                constraints: constraints,
                formFieldLabels: formFieldLabels,
              ),
            ),
          ),
          Positioned(
            top: 2,
            left: PaddingMeasure.g,
            child: Container(
              color: ColorPalette.background,
              margin: const EdgeInsets.symmetric(
                vertical: PaddingMeasure.pp,
                horizontal: PaddingMeasure.m,
              ),
              child: Text(
                ' Painel de Controle ',
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(color: ColorPalette.darkGrey50),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
