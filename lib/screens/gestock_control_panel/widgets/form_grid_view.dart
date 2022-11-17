import 'package:control_panel_flutter/screens/gestock_control_panel/widgets/form_field.dart';
import 'package:control_panel_flutter/themes/paddings.dart';
import 'package:flutter/material.dart';

class FormFieldGridView extends StatelessWidget {
  const FormFieldGridView({
    Key? key,
    required this.constraints,
    required this.formFieldLabels,
  }) : super(key: key);

  final BoxConstraints constraints;
  final List<String> formFieldLabels;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: constraints.maxWidth * 0.4,
        childAspectRatio: 9 / 2,
        mainAxisSpacing: PaddingMeasure.pp,
        crossAxisSpacing: PaddingMeasure.pp,
      ),
      itemCount: formFieldLabels.length,
      itemBuilder: (context, index) {
        final formLabel = formFieldLabels[index];
        return ControlPanelFormField(
          formFieldText: formLabel,
          constraints: constraints,
        );
      },
    );
  }
}
