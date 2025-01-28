import 'package:flutter/material.dart';
import '../../feature/protfolio/preseantation/view/protfolio_view.dart';

class AppRouter {
  static Map<String, Widget Function(dynamic)> routes = {
    PortfolioScreen.id: (context) => const PortfolioScreen(),
  };
}
