import 'package:flutter/material.dart';
import 'ui/special_entites.dart/nav_service.dart';

void main() => runApp(HrSimulatorApp());

class HrSimulatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HR Simulator',
      navigatorKey: NavigationService.navigationKey,
      onGenerateRoute: generateRoute,
      initialRoute: NavConst.introRoute,
    );
  }
}
