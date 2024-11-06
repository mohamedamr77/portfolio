import 'package:flutter/material.dart';
import 'package:portfolioapp/core/extentions/screen_size.dart';
import 'package:portfolioapp/core/shared_widget/global_text.dart';
import 'package:portfolioapp/core/utils/app_color.dart';
import 'package:portfolioapp/core/utils/app_images.dart';
import 'package:portfolioapp/core/utils/app_text.dart';

class IntroductionSection extends StatelessWidget {
  const IntroductionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 0.06.w, right:0.02.w ,  top: 0.06.h, bottom: 0.04.h),
      child: Row(
        children: [
           Expanded(
             flex: 2,
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 GText(color: Theme.of(context).primaryColor, content: AppText.hiIam, fontSize: 24 , fontWeight: FontWeight.w500,),
                 SizedBox(height: 6,),
                 const GText(color: AppSharedColors.accentOrange, content: AppText.name, fontSize: 32 , fontWeight: FontWeight.w600,),

               ],
             ),
           ),
           Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                  Image(image: const AssetImage(
                    AppImages.mohamedAmr2,),
                    height: 0.43.h,
                    width: 0.2.w,

                  ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
