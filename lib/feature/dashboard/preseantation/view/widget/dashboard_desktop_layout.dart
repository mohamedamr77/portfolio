import 'package:flutter/material.dart';
import 'package:portfolioapp/feature/dashboard/preseantation/view/widget/services_section/service_section.dart';

import 'about_me/about_me_section.dart';
import 'app_bar/custom_app_bar.dart';
import 'introduction_section/introduction_section.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          CustomAppBar(),
          IntroductionSection(),
          SizedBox(
            height: 50,
          ),
          AboutMeSection(),
          SizedBox(
            height: 50,
          ),
          ServiceSection(),
        ],
      ),
    );
  }
}
