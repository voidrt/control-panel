import 'package:control_panel_flutter/screens/gestock_control_panel/widgets/form_grid_view.dart';
import 'package:control_panel_flutter/widgets/outlined_text_container.dart';
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
      child: OutlinedTextContainer(
        constraints: constraints,
        text: 'Painel de Controle',
        child: FormFieldGrid(
          constraints: constraints,
          formFieldLabels: formFieldLabels,
        ),
      ),
    );
  }
}
