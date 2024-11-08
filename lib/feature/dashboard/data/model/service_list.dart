

import 'package:portfolioapp/feature/dashboard/data/model/service_model.dart';

import '../../../../core/utils/app_images.dart';
import '../../../../core/utils/app_text.dart';

List<ServiceModel> servicesList=[
  ServiceModel(
    title: AppText.appDesign,
    description: "Fantastic design for mobile ",
    image: AppImages.mobileApp,
    onTap: (){},),
  ServiceModel(
    title: AppText.webDesign,
    description: "Fantastic design for mobile ",
    image: AppImages.webIcon,
    onTap: (){},),
  ServiceModel(
    title: AppText.tabletDesign,
    description: "Fantastic design for mobile ",
    image: AppImages.tablet,
    onTap: (){},),
  ServiceModel(
    title: AppText.desktopDesign,
    description: "Fantastic design for mobile ",
    image: AppImages.desktop,
    onTap: (){},),
];