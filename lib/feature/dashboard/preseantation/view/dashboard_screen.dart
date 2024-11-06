import 'package:flutter/material.dart';
import 'package:portfolioapp/feature/dashboard/preseantation/view/widget/app_bar/custom_app_bar.dart';
import 'package:portfolioapp/feature/dashboard/preseantation/view/widget/dashboard_body.dart';

class DashboardScreen extends StatelessWidget {
  static const id = "/DashboardScreen";

  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(),
      body: DashboardBody(),
    );
  }
}
