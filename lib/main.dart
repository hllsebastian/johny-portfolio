import 'package:flutter/material.dart';
import 'package:johny_portfolio/core/dependency_injection.dart';
import 'package:johny_portfolio/core/error/global_error_handle.dart';
import 'package:johny_portfolio/core/router/app_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  GlobalErrorHandler.initialize();
  await dependecyInjection();
  runApp(JohnyPortfolioApp());
}

class JohnyPortfolioApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
    );
  }
}
