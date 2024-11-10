import 'package:flutter/material.dart';
import 'package:portfolioapp/core/shared_widget/custom_text_with_desc.dart';
import 'package:portfolioapp/core/utils/app_text.dart';
import 'cached_custom_grid_view_my_project.dart';

class MyProjectSection extends StatelessWidget {
  const MyProjectSection({super.key});
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: 3,
      itemBuilder: (context, index) {
        if (index == 0) {
          return const CustomTitleWithDescription(
              title: AppText.myProjects,
              description: AppText.descriptionProject);
        } else if (index == 1) {
          return const SizedBox(
            height: 40,
          );
        } else {
          return const CachedCustomGridViewMyProject();
        }
      },
    );
  }
}
