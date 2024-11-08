import 'package:flutter/material.dart';
import 'package:portfolioapp/core/shared_widget/custom_text_with_desc.dart';
import 'package:portfolioapp/core/utils/app_text.dart';

import 'my_project_item.dart';

class MyProjectSection extends StatelessWidget {
  const MyProjectSection({super.key});
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomTitleWithDescription(
            title: AppText.myProjects, description: AppText.descriptionProject),
        Row(
          children: [
            MyProjectItem(),
          ],
        )
      ],
    );
  }
}
