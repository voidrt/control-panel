import 'package:control_panel_flutter/screens/tela_do_joao/widgets/form_grid_view.dart';
import 'package:control_panel_flutter/themes/colors.dart';
import 'package:control_panel_flutter/themes/paddings.dart';
import 'package:flutter/material.dart';

class ControlPanel extends StatelessWidget {
  const ControlPanel({Key? key}) : super(key: key);

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
    return LayoutBuilder(builder: (context, constraints) {
      return Stack(
        children: [
          Container(
            margin: const EdgeInsets.all(PaddingMeasure.defaultSize),
            height: constraints.maxHeight * 0.5,
            width: constraints.maxWidth,
            decoration: BoxDecoration(
              border: Border.all(
                width: 1.5,
                color: ColorPalette.background,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(PaddingMeasure.defaultSize),
              child: FormFieldGridView(
                constraints: constraints,
                formFieldLabels: formFieldLabels,
              ),
            ),
          ),
          Positioned(
            top: 2,
            left: PaddingMeasure.g,
            child: Container(
              color: ColorPalette.darkGrey400,
              margin: const EdgeInsets.symmetric(
                vertical: PaddingMeasure.pp,
                horizontal: PaddingMeasure.m,
              ),
              child: Text(
                ' Painel de Controle ',
                style: Theme.of(context)
                    .textTheme
                    .bodyText2!
                    .copyWith(color: ColorPalette.background),
              ),
            ),
          )
        ],
      );
    });
  }
}
