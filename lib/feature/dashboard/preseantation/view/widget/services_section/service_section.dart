import 'package:flutter/material.dart';
import 'package:portfolioapp/core/shared_widget/custom_text_with_desc.dart';
import 'package:portfolioapp/core/utils/app_text.dart';
import 'package:portfolioapp/feature/dashboard/preseantation/view/widget/services_section/service_list.dart';

class ServiceSection extends StatelessWidget {
  const ServiceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomTitleWithDescription(
            title: AppText.services, description: AppText.description1),
        SizedBox(
          height: 60,
        ),
        ServiceList(),
      ],
    );
  }
}
