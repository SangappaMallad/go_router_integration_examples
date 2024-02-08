import 'package:flutter/material.dart';
import 'package:go_router_integration_examples/routes/app_route_config.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routeInformationParser: MyAppRouter.returnRouter(true).routeInformationParser,
      routerDelegate: MyAppRouter.returnRouter(true).routerDelegate,
    );
  }
}
