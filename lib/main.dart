import 'package:control_panel_flutter/core/routes/routes.dart';
import 'package:control_panel_flutter/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    const ProviderScope(
      child: GeStockControlPanel(),
    ),
  );
}

class GeStockControlPanel extends StatelessWidget {
  const GeStockControlPanel({Key? key}) : super(key: key);

  final String initialRoute = NavRoutes.controlPanel;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: initialRoute,
      theme: AppTheme.appTheme,
      routes: NavRoutes.materialRoutes,
    );
  }
}
