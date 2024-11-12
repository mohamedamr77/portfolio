import 'package:flutter/material.dart';
import 'package:portfolioapp/feature/dashboard/preseantation/view/widget/dashboard_body.dart';
import 'package:portfolioapp/feature/dashboard/preseantation/view/widget/mobile_layout/custom_drawer.dart';

class DashboardScreen extends StatelessWidget {
  static const id = "/DashboardScreen";

  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: DashboardBody(),
      endDrawer: CustomDrawer(),
    );
  }
}