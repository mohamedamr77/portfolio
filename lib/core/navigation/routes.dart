import 'package:flutter/material.dart';

import '../../feature/dashboard/preseantation/view/dashboard_screen.dart';
import '../../feature/project_details/presentation/view/project_details_screen.dart';

class AppRouter {
  static Map<String, Widget Function(dynamic)> routes = {
    DashboardScreen.id: (context) => const DashboardScreen(),
    ProjectDetailsScreen.id: (context) => const ProjectDetailsScreen(),
  };
}
