import 'package:control_panel_flutter/themes/colors.dart';
import 'package:control_panel_flutter/themes/paddings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ControlPanelFormField extends ConsumerStatefulWidget {
  const ControlPanelFormField({
    Key? key,
    required this.formFieldText,
    required this.constraints,
  }) : super(key: key);

  final String formFieldText;
  final BoxConstraints constraints;

  @override
  ControlPanelFormFieldState createState() => ControlPanelFormFieldState();
}

class ControlPanelFormFieldState extends ConsumerState<ControlPanelFormField> {
  final TextEditingController _formFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.constraints.maxWidth * 0.23,
      margin: const EdgeInsets.symmetric(
        vertical: PaddingMeasure.pp,
        horizontal: PaddingMeasure.m,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: PaddingMeasure.pp),
            child: Text(
              widget.formFieldText,
              style: Theme.of(context)
                  .textTheme
                  .subtitle2!
                  .copyWith(color: ColorPalette.grey50),
            ),
          ),
          TextField(
            cursorColor: ColorPalette.grey50,
            controller: _formFieldController,
            cursorWidth: 1,
            style: Theme.of(context)
                .textTheme
                .subtitle2!
                .copyWith(color: ColorPalette.grey50),
            decoration: InputDecoration(
              filled: true,
              fillColor: ColorPalette.darkGrey800,
              errorBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: ColorPalette.primaryDark,
                  width: 1.5,
                ),
                borderRadius: BorderRadius.circular(20),
                gapPadding: PaddingMeasure.defaultSize,
              ),
              contentPadding: const EdgeInsets.only(
                left: PaddingMeasure.defaultSize,
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(10),
                gapPadding: PaddingMeasure.defaultSize,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                gapPadding: PaddingMeasure.defaultSize,
                borderSide: const BorderSide(
                  width: 1.5,
                  color: ColorPalette.grey50,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
