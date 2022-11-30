import 'package:control_panel_flutter/screens/gestock_control_panel/widgets/form_field.dart';
import 'package:flutter/material.dart';
import 'package:control_panel_flutter/themes/paddings.dart';

class FormFieldGrid extends StatelessWidget {
  const FormFieldGrid({
    Key? key,
    required this.constraints,
    required this.formFieldLabels,
  }) : super(key: key);

  final BoxConstraints constraints;
  final List<String> formFieldLabels;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: PaddingMeasure.m),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: constraints.maxWidth * 0.4,
          childAspectRatio: 9 / 2,
          crossAxisSpacing: PaddingMeasure.defaultSize,
          mainAxisExtent: constraints.maxHeight * 0.2,
        ),
        itemCount: formFieldLabels.length,
        itemBuilder: (context, index) {
          String formLabel = formFieldLabels[index];
          return ControlPanelFormField(
            formFieldText: formLabel,
            constraints: constraints,
          );
        },
      ),
    );
  }
}
