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

class DashboardDesktopLayout extends StatefulWidget {
  const DashboardDesktopLayout({super.key});

  @override
  State<DashboardDesktopLayout> createState() => _DashboardDesktopLayoutState();
}

class _DashboardDesktopLayoutState extends State<DashboardDesktopLayout> {
  final GlobalKey homeKey = GlobalKey();
  final GlobalKey aboutMeKey = GlobalKey();
  final GlobalKey servicesKey = GlobalKey();
  final GlobalKey projectsKey = GlobalKey();
  final GlobalKey certificatesKey = GlobalKey();
  final GlobalKey contactKey = GlobalKey();
  final GlobalKey downloadCvKey = GlobalKey();

  final ScrollController scrollController = ScrollController();

  void scrollToSection(GlobalKey key) {
    final context = key.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }
  }

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
      AppBarServiceModel(
        title: AppText.downloadCv,
        onTap: () => scrollToSection(downloadCvKey),
      ),
    ];

    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: CustomAppBar(appBarServiceList:appBarServiceList,)),
        SliverToBoxAdapter(child: IntroductionSection(key: homeKey)), // Ensure only homeKey is used here
        const SliverToBoxAdapter(child: SpaceBetweenSection()),
        SliverToBoxAdapter(child: AboutMeSection(key: aboutMeKey)),
        const SliverToBoxAdapter(child: SpaceBetweenSection()),
        SliverToBoxAdapter(child: ServiceSection(key: servicesKey)),
        const SliverToBoxAdapter(child: SpaceBetweenSection()),
        MyProjectSection(key: projectsKey),
        SliverToBoxAdapter(child: CertificatesSection(key: certificatesKey)),
        const SliverToBoxAdapter(child: SpaceBetweenSection()),
        SliverToBoxAdapter(child: ContactSection(key: contactKey)),
        const SliverToBoxAdapter(child: SpaceBetweenSection()),
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