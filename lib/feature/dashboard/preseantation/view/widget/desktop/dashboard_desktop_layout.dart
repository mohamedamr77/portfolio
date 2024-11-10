import 'package:flutter/material.dart';
import 'package:portfolioapp/feature/dashboard/preseantation/view/widget/certificates/certificates_section.dart';
import 'package:portfolioapp/feature/dashboard/preseantation/view/widget/contact/contact_section.dart';
import 'package:portfolioapp/feature/dashboard/preseantation/view/widget/services_section/service_section.dart';
import '../../../../../../core/shared_widget/space_between_section.dart';
import '../../../../../../core/utils/app_text.dart';
import '../../../../data/model/app_bar_service_model.dart';
import '../about_me/about_me_section.dart';
import '../app_bar/custom_app_bar.dart';
import '../introduction_section/introduction_section.dart';
import '../my_project/my_project_section.dart';

class DashboardDesktopLayout extends StatelessWidget {
  final ScrollController scrollControllerPage;
  final GlobalKey homeKey;
  final GlobalKey aboutMeKey;
  final GlobalKey servicesKey;
  final GlobalKey projectsKey;
  final GlobalKey certificatesKey;
  final GlobalKey contactKey;
  final Function(GlobalKey) scrollToSection;

  const DashboardDesktopLayout({
    super.key,
    required this.scrollControllerPage,
    required this.homeKey,
    required this.aboutMeKey,
    required this.servicesKey,
    required this.projectsKey,
    required this.certificatesKey,
    required this.contactKey,
    required this.scrollToSection,
  });

  @override
  Widget build(BuildContext context) {
    List<AppBarServiceModel> appBarServiceList = [
      AppBarServiceModel(
        title: AppText.home,
        onTap: () => scrollToSection(homeKey),
      ),
      AppBarServiceModel(
        title: AppText.aboutMe,
        onTap: () => scrollToSection(aboutMeKey),
      ),
      AppBarServiceModel(
        title: AppText.services,
        onTap: () => scrollToSection(servicesKey),
      ),
      AppBarServiceModel(
        title: AppText.projects,
        onTap: () => scrollToSection(projectsKey),
      ),
      AppBarServiceModel(
        title: AppText.certificates,
        onTap: () => scrollToSection(certificatesKey),
      ),
      AppBarServiceModel(
        title: AppText.contact,
        onTap: () => scrollToSection(contactKey),
      ),
    ];

    return CustomScrollView(
      controller: scrollControllerPage,
      slivers: [
        SliverToBoxAdapter(
            child: CustomAppBar(appBarServiceList: appBarServiceList)),
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

/*
 Column(
        children: [
          CustomAppBar(appBarServiceList:appBarServiceList,),
          IntroductionSection(key: homeKey), // Ensure only homeKey is used here
          const SpaceBetweenSection(),
          AboutMeSection(key: aboutMeKey),
          const SpaceBetweenSection(),
          ServiceSection(key: servicesKey),
          const SpaceBetweenSection(),
          MyProjectSection(key: projectsKey),
          CertificatesSection(key: certificatesKey),
          const SpaceBetweenSection(),
          ContactSection(key: contactKey,),
          const SpaceBetweenSection(),
        ],
      ),
 */
