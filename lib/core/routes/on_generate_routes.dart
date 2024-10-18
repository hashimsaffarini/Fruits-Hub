import 'package:flutter/material.dart';
import 'package:fruits_hub/features/splash/ui/views/splash_view.dart';

Route<dynamic> onGenerateRoutes(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(
        builder: (_) => const SplashView(),
      );
    default:
      return MaterialPageRoute(
        builder: (_) => const Scaffold(),
      );
  }
}
