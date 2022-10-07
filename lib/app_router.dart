import '/core/constants/app_routes.dart';
import 'package:flutter/material.dart';

class AppRouter {
  AppRouter() {}
  Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.home:
        return MaterialPageRoute(
          builder: (context) {
            return Container();
          },
        );
    }
    return _routeError();
  }

  MaterialPageRoute<dynamic> _routeError() {
    return MaterialPageRoute(
      builder: (_) {
        return const Scaffold(
          body: Center(
            child: Text('Route Error'),
          ),
        );
      },
    );
  }
}
