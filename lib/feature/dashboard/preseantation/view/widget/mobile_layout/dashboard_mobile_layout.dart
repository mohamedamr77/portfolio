import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolioapp/feature/dashboard/preseantation/view/widget/services_section/service_section.dart';
import '../../../../../../../core/shared_widget/space_between_section.dart';
import '../../../view_model/dashboard_controller/dashboard_cubit.dart';
import '../about_me/about_me_section.dart';
import '../certificates/certificates_section.dart';
import '../contact/contact_section.dart';
import '../introduction_section/introduction_section.dart';
import '../my_project/my_project_section.dart';
import 'custom_app_bar_mobile_layout.dart';

class DashboardMobileLayout extends StatelessWidget {
  final ScrollController scrollControllerPage;

  const DashboardMobileLayout({
    super.key,
    required this.scrollControllerPage,
  });

  @override
  Widget build(BuildContext context) {
    var cubit = BlocProvider.of<DashboardCubit>(context);

    return CustomScrollView(
      controller: scrollControllerPage,
      slivers: [
        const SliverToBoxAdapter(child: CustomAppBarMobileLayout()),
        SliverToBoxAdapter(child: IntroductionSection(key: cubit.homeKey)),
        const SliverToBoxAdapter(child: SpaceBetweenSection()),
        SliverToBoxAdapter(child: AboutMeSection(key: cubit.aboutMeKey)),
        const SliverToBoxAdapter(child: SpaceBetweenSection()),
        SliverToBoxAdapter(child: ServiceSection(key: cubit.servicesKey)),
        const SliverToBoxAdapter(child: SpaceBetweenSection()),
        MyProjectSection(key: cubit.projectsKey),
        const SliverToBoxAdapter(child: SpaceBetweenSection(height: 30)),
        SliverToBoxAdapter(
            child: CertificatesSection(key: cubit.certificatesKey)),
        const SliverToBoxAdapter(child: SpaceBetweenSection()),
        SliverToBoxAdapter(child: ContactSection(key: cubit.contactKey)),
        const SliverToBoxAdapter(child: SpaceBetweenSection()),
      ],
    );
  }
}
