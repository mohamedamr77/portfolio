import 'package:flutter/material.dart';
import 'package:portfolioapp/feature/dashboard/data/model/service_model.dart';
import '../../../../../../core/shared_widget/global_text.dart';
import '../../../../../../core/utils/app_color.dart';
import '../../../../../../core/utils/image_service.dart';

class ServiceItemListBody extends StatelessWidget {
  const ServiceItemListBody(
      {super.key, required this.serviceModel, required this.margin});
  final ServiceModel serviceModel;
  final EdgeInsetsGeometry? margin;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      padding: const EdgeInsets.symmetric(horizontal: 18),
      decoration: BoxDecoration(
        color: AppSharedColors.lightGray,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 40,
          ),
          imageService(image: serviceModel.image),
          const SizedBox(
            height: 20,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: GText(
              color: Theme.of(context).scaffoldBackgroundColor,
              content: serviceModel.title,
              fontSize: 32,
              fontWeight: FontWeight.w600,
            ),
          ),
          GText(
              color: Theme.of(context).scaffoldBackgroundColor,
              content: serviceModel.description,
              fontSize: 19,
              fontWeight: FontWeight.w400),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
