import 'package:flutter/material.dart';
import 'package:portfolioapp/core/utils/size_config.dart';
import 'package:portfolioapp/feature/dashboard/preseantation/view/widget/dashboard_body.dart';

class DashboardScreen extends StatelessWidget {
  static const id = "/DashboardScreen";

  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: DashboardBody(),
    );
  }
}

// appBar: MediaQuery.sizeOf(context).width<SizeConfig.desktopSize ? AppBar():null,

