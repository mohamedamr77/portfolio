import 'package:flutter/material.dart';
import 'package:portfolioapp/core/shared_widget/custom_text_with_desc.dart';
import 'package:portfolioapp/core/utils/app_text.dart';
import 'package:portfolioapp/core/utils/size_config.dart';
import 'package:portfolioapp/feature/protfolio/preseantation/view/widget/services_section/service_list.dart';

import '../mobile_layout/service_list_mobile_layout.dart';

class ServiceSection extends StatelessWidget {
  const ServiceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomTitleWithDescription(
            title: AppText.services, description: AppText.description1),
        const SizedBox(
          height: 60,
        ),
        Visibility(
            visible: MediaQuery.sizeOf(context).width > SizeConfig.tabletSize,
            child: const ServiceList()),
        Visibility(
            visible: MediaQuery.sizeOf(context).width <= SizeConfig.tabletSize,
            child: const ServiceListMobileLayout()),
      ],
    );
  }
}
