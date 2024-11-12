import '../../../../core/utils/app_text.dart';
import '../../preseantation/view_model/dashboard_controller/dashboard_cubit.dart';
import 'app_bar_service_model.dart';

List<AppBarServiceModel> getAppBarServiceList(PortfolioCubit cubit) {
  return [
    AppBarServiceModel(
      title: AppText.home,
      onTap: () => cubit.scrollToSection(cubit.homeKey),
    ),
    AppBarServiceModel(
      title: AppText.aboutMe,
      onTap: () => cubit.scrollToSection(cubit.aboutMeKey),
    ),
    AppBarServiceModel(
      title: AppText.services,
      onTap: () => cubit.scrollToSection(cubit.servicesKey),
    ),
    AppBarServiceModel(
      title: AppText.projects,
      onTap: () => cubit.scrollToSection(cubit.projectsKey),
    ),
    AppBarServiceModel(
      title: AppText.certificates,
      onTap: () => cubit.scrollToSection(cubit.certificatesKey),
    ),
    AppBarServiceModel(
      title: AppText.contact,
      onTap: () => cubit.scrollToSection(cubit.contactKey),
    ),
  ];
}
