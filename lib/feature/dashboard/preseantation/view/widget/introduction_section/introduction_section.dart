import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hive/hive.dart';
import 'package:portfolioapp/core/extentions/screen_size.dart';
import 'package:portfolioapp/core/shared_widget/custom_elevated_btn.dart';
import 'package:portfolioapp/core/shared_widget/global_text.dart';
import 'package:portfolioapp/core/utils/app_color.dart';
import 'package:portfolioapp/core/utils/app_images.dart';
import 'package:portfolioapp/core/utils/app_text.dart';

import '../../../../../../core/utils/const_box.dart';

class IntroductionSection extends StatelessWidget {
  const IntroductionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 0.11.w, right: 0.06.w ,  top: 0.06.h, bottom: 0.04.h),
      child: Row(
        children: [
           Expanded(
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 GText(color: Theme.of(context).primaryColor, content: AppText.hiIam, fontSize: 24 , fontWeight: FontWeight.w500,),
                 const SizedBox(height: 6,),
                 const GText(color: AppSharedColors.accentOrange, content: AppText.name, fontSize: 32 , fontWeight: FontWeight.w600,),
                 const FittedBox(
                     fit: BoxFit.scaleDown,
                     alignment: Alignment.centerLeft,
                     child: GText(content: AppText.flutter, fontSize:  100 , fontWeight: FontWeight.w700,)),
                 Padding(
                   padding: EdgeInsets.only(left: 0.14.w),
                   child: const FittedBox(
                       fit: BoxFit.scaleDown,
                       alignment: Alignment.centerLeft,
                       child: GText(content: AppText.developer, fontSize:  100 , fontWeight: FontWeight.w700,)),
                 ),
                SizedBox(height: 20,),
                 CustomElevatedButton(
                   btnColor: AppSharedColors.accentOrange,
                     width: 0.1.w,
                     height: 0.07.h,
                     borderRadius: BorderRadius.circular(5),
                     onPress: (){}, child: const GText( content: AppText.hireMe, fontSize:21 )),

               ],
             ),
           ),
           Column(
             crossAxisAlignment: CrossAxisAlignment.center,
             children: [
                 Image(
                   image:  AssetImage(
                     Hive.box(BoxApp.kThemeBox).get('isDark') == true
                         ?
                     "assets/images/moamrCircle.jpg" :
                       "assets/images/moamrCircleWhite.jpg"
                     ,),
                   height: 0.42.h,
                   width: 0.2.w,
                 ),
                  const SizedBox(height: 40,),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     SvgPicture.asset(AppImages.facebook ,color: Theme.of(context).primaryColor,),
                     const SizedBox(width: 25,),
                     SvgPicture.asset(AppImages.twitter, color: Theme.of(context).primaryColor,),
                     const SizedBox(width: 25,),
                     SvgPicture.asset(AppImages.instagram, color: Theme.of(context).primaryColor,),
                     const SizedBox(width: 25,),
                     SvgPicture.asset(AppImages.linkedIn , color: Theme.of(context).primaryColor,),
                   ],
                 )
             ],
           )
        ],
      ),
    );
  }
}

