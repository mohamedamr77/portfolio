import 'package:flutter/material.dart';

import '../../../../../../core/shared_widget/space_between_section.dart';
import '../about_me/about_me_section.dart';
import '../certificates/certificates_section.dart';
import '../contact/contact_section.dart';
import '../introduction_section/introduction_section.dart';
import '../my_project/my_project_section.dart';
import '../services_section/service_section.dart';

class DashboardTabletLayout extends StatelessWidget {
   const DashboardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: IntroductionSection()), // Ensure only homeKey is used here
        SliverToBoxAdapter(child: SpaceBetweenSection()),
        SliverToBoxAdapter(child: AboutMeSection()),
        SliverToBoxAdapter(child: SpaceBetweenSection()),
        SliverToBoxAdapter(child: ServiceSection()),
        SliverToBoxAdapter(child: SpaceBetweenSection()),
        MyProjectSection(),
        SliverToBoxAdapter(child: SpaceBetweenSection(height: 30,)),
        SliverToBoxAdapter(child: CertificatesSection()),
        SliverToBoxAdapter(child: SpaceBetweenSection()),
        SliverToBoxAdapter(child: ContactSection()),
      ],
    );
  }
}
