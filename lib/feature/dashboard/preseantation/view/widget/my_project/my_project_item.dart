import 'package:flutter/material.dart';
import 'package:portfolioapp/core/shared_functions/launch_url.dart';
import 'package:portfolioapp/feature/dashboard/data/model/my_project_model.dart';
import '../../../../../../core/shared_widget/global_text.dart';
import '../../../../../../core/utils/app_color.dart';

class MyProjectItem extends StatelessWidget {
  const MyProjectItem(
      {super.key, required this.myProjectModel, required this.index});
  final int index;
  final MyProjectModel myProjectModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image(
              image: AssetImage(myProjectModel.imagePath),
              height: 200,
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          GText(
            color: AppSharedColors.accentOrange,
            content: myProjectModel.title,
            fontSize: 24,
            fontWeight: FontWeight.w700,
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: AppSharedColors.accentOrange),
              onPressed: () {
                myProjectModel.onTap.call();
                launchCustomUrl(
                    url: myProjectModel.codeInGithubPath, context: context);
                // NavigationManager.push(ProjectDetailsScreen.id);
              },
              child: const GText(content: "See Project", fontSize: 19)),
        ],
      ),
    );
  }
}
