import 'package:control_panel_flutter/themes/paddings.dart';
import 'package:flutter/material.dart';

class HeaderTile extends StatelessWidget {
  const HeaderTile({
    Key? key,
    required this.headerText,
  }) : super(key: key);

  final String headerText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: PaddingMeasure.m,
              vertical: PaddingMeasure.pp,
            ),
            child: Text(headerText),
          ),
        ],
      ),
    );
  }
}
