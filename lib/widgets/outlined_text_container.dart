import 'package:control_panel_flutter/themes/colors.dart';
import 'package:control_panel_flutter/themes/paddings.dart';
import 'package:flutter/material.dart';

class OutlinedTextContainer extends StatelessWidget {
  const OutlinedTextContainer({
    Key? key,
    required this.constraints,
    required this.child,
    required this.text,
  }) : super(key: key);

  final BoxConstraints constraints;
  final Widget child;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.all(PaddingMeasure.defaultSize),
          width: constraints.maxWidth,
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: ColorPalette.darkGrey50,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(PaddingMeasure.defaultSize),
            child: child,
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
              ' $text ',
              style: Theme.of(context)
                  .textTheme
                  .bodyText2!
                  .copyWith(color: ColorPalette.darkGrey50),
            ),
          ),
        )
      ],
    );
  }
}
