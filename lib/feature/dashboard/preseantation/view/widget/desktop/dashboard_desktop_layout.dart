import 'package:flutter/material.dart';
import 'package:portfolioapp/feature/dashboard/preseantation/view/widget/certificates/certificates_section.dart';
import 'package:portfolioapp/feature/dashboard/preseantation/view/widget/services_section/service_section.dart';
import '../../../../../../core/shared_widget/space_between_section.dart';
import '../about_me/about_me_section.dart';
import '../app_bar/custom_app_bar.dart';
import '../introduction_section/introduction_section.dart';
import '../my_project/my_project_section.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return  const SingleChildScrollView(
      child: Column(
        children: [
          CustomAppBar(),
          IntroductionSection(),
          SpaceBetweenSection(),
          AboutMeSection(),
          SpaceBetweenSection(),
          ServiceSection(),
          SpaceBetweenSection(),
          MyProjectSection(),
          CertificatesSection(),
        ],
      ),
    );
  }
}