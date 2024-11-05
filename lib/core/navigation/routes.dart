import 'package:flutter/material.dart';

import '../../feature/dashboard/preseantation/view/dashboard_screen.dart';


class AppRouter {
  static Map<String, Widget Function(dynamic)> routes = {
    DashboardScreen.id: (context) => const DashboardScreen(),

  };
}
