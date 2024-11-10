import 'package:flutter/material.dart';

import '../../../../../../core/shared_widget/space_between_section.dart';
import '../about_me/about_me_section.dart';
import '../certificates/certificates_section.dart';
import '../contact/contact_section.dart';
import '../introduction_section/introduction_section.dart';
import '../my_project/my_project_section.dart';
import '../services_section/service_section.dart';

class DashboardTabletLayout extends StatelessWidget {
  final ScrollController scrollControllerPage;
  final GlobalKey homeKey;
  final GlobalKey aboutMeKey;
  final GlobalKey servicesKey;
  final GlobalKey projectsKey;
  final GlobalKey certificatesKey;
  final GlobalKey contactKey;

  const DashboardTabletLayout({
    super.key,
    required this.scrollControllerPage,
    required this.homeKey,
    required this.aboutMeKey,
    required this.servicesKey,
    required this.projectsKey,
    required this.certificatesKey,
    required this.contactKey,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: scrollControllerPage,
      slivers: [
        SliverToBoxAdapter(child: IntroductionSection(key: homeKey)),
        const SliverToBoxAdapter(child: SpaceBetweenSection()),
        SliverToBoxAdapter(child: AboutMeSection(key: aboutMeKey)),
        const SliverToBoxAdapter(child: SpaceBetweenSection()),
        SliverToBoxAdapter(child: ServiceSection(key: servicesKey)),
        const SliverToBoxAdapter(child: SpaceBetweenSection()),
        MyProjectSection(key: projectsKey),
        const SliverToBoxAdapter(child: SpaceBetweenSection(height: 30)),
        SliverToBoxAdapter(child: CertificatesSection(key: certificatesKey)),
        const SliverToBoxAdapter(child: SpaceBetweenSection()),
        SliverToBoxAdapter(child: ContactSection(key: contactKey)),
      ],
    );
  }
}

