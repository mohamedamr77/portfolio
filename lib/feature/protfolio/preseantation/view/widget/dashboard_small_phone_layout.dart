import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolioapp/feature/protfolio/preseantation/view/widget/services_section/service_section.dart';
import '../../../../../../../core/shared_widget/space_between_section.dart';
import '../../view_model/dashboard_controller/dashboard_cubit.dart';
import 'about_me/about_me_section.dart';
import 'certificates/certificates_section.dart';
import 'contact/contact_section.dart';
import 'introduction_section/image_and_soical_icon.dart';
import 'introduction_section/introduction_content.dart';
import 'mobile_layout/custom_app_bar_mobile_layout.dart';
import 'my_project/my_project_section.dart';

class PortfolioSmallPhoneLayout extends StatelessWidget {
  final ScrollController scrollControllerPage;
  const PortfolioSmallPhoneLayout({super.key, required this.scrollControllerPage});

  @override
  Widget build(BuildContext context) {
    var cubit = BlocProvider.of<PortfolioCubit>(context);

    return CustomScrollView(
      controller: scrollControllerPage,
      slivers: [
        const SliverToBoxAdapter(child: CustomAppBarMobileLayout()),
        SliverToBoxAdapter(child: ImageAndSocialIcon(key: cubit.homeKey)),
        const SliverToBoxAdapter(child: SpaceBetweenSection(height: 20)),
        const SliverToBoxAdapter(child: IntroductionContent()),
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
