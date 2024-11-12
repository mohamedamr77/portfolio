import 'package:flutter/material.dart';

import '../../feature/project_details/presentation/view/project_details_screen.dart';
import '../../feature/protfolio/preseantation/view/dashboard_screen.dart';

class AppRouter {
  static Map<String, Widget Function(dynamic)> routes = {
    PortfolioScreen.id: (context) => const PortfolioScreen(),
    ProjectDetailsScreen.id: (context) => const ProjectDetailsScreen(),

  };
}
