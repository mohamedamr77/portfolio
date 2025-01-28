import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:portfolioapp/core/shared_functions/launch_url.dart';
import '../../../../../../core/shared_widget/build_shimmer_shape.dart';
import '../../../../../../core/shared_widget/global_text.dart';
import '../../../../../../core/utils/app_color.dart';
import '../../../../data/model/my_project_model.dart';

class MyProjectItem extends StatelessWidget {
  const MyProjectItem(
      {super.key, required this.myProjectModel, required this.index});
  final int index;
  final MyProjectModel myProjectModel;
  @override
  Widget build(BuildContext context) {
    debugPrint(myProjectModel.imagePath);
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: CachedNetworkImage(
              height: 200,
              fit: BoxFit.fill,
              imageUrl: myProjectModel.imagePath,
              progressIndicatorBuilder: (context, url, downloadProgress) =>
              const BuildShimmerShape( height: 200,),
              errorWidget: (context, url, error) => const Icon(Icons.error),
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