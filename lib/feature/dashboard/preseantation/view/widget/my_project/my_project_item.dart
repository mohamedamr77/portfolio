import 'package:flutter/material.dart';
import 'package:portfolioapp/core/extentions/screen_size.dart';
import 'package:portfolioapp/core/utils/app_images.dart';
import '../../../../../../core/shared_widget/global_text.dart';
import '../../../../../../core/utils/app_color.dart';
import '../../../../../../core/utils/app_text.dart';

class MyProjectItem extends StatelessWidget {
  const MyProjectItem({super.key});

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
              image: const AssetImage(
                AppImages.perfectBody,
              ),
              height: 0.28.h,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const GText(
            color: AppSharedColors.accentOrange,
            content: AppText.thePerfectBodyApp,
            fontSize: 24,
            fontWeight: FontWeight.w700,
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: AppSharedColors.accentOrange),
              onPressed: () {},
              child: const GText(content: "See Project", fontSize: 19)),
        ],
      ),
    );
  }
}
