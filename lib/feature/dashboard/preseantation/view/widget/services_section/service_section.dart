import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolioapp/core/extentions/screen_size.dart';
import 'package:portfolioapp/core/shared_widget/custom_text_with_desc.dart';
import 'package:portfolioapp/core/shared_widget/global_text.dart';
import 'package:portfolioapp/core/utils/app_color.dart';
import 'package:portfolioapp/core/utils/app_images.dart';
import 'package:portfolioapp/core/utils/app_text.dart';

import '../../../../data/model/service_list.dart';

class ServiceSection extends StatelessWidget {
  const ServiceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return    Column(
      children: [
           const CustomTitleWithDescription(title: AppText.services, description: AppText.description1),
           const SizedBox(height: 60,),
           Padding(
             padding:  EdgeInsets.symmetric(horizontal:  0.1.w),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: List.generate(servicesList.length,
                     (index) {
                 return Expanded(
                   child: Container(
                     margin: index != servicesList.length -1 ?
                      const EdgeInsets.only(right: 16) :EdgeInsets.zero,
                     padding: const EdgeInsets.symmetric(horizontal: 18),
                     decoration: BoxDecoration(
                       color: AppSharedColors.lightGray,
                        borderRadius: BorderRadius.circular(14),
                     ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           const SizedBox(height: 40,),
                           imageService(image: servicesList[index].image),
                           const SizedBox(height: 20,),
                           FittedBox(
                             fit: BoxFit.scaleDown,
                             child: GText(
                               color: Theme.of(context).scaffoldBackgroundColor,
                               content: servicesList[index].title , fontSize: 32 , fontWeight: FontWeight.w600,),
                           ),
                           // const SizedBox(height: ,),
                           GText(
                               color: Theme.of(context).scaffoldBackgroundColor,
                               content: servicesList[index].description , fontSize: 19 , fontWeight: FontWeight.w400),
                           const SizedBox(height: 20,),
                         ],
                      ),
                   ),
                 );
               },),
             ),
           )

      ],
    );
  }
}


 imageService({required String image}){
  return image.contains(".svg")?
      SvgPicture.asset(image, width: 72,height: 82) :
      Image.asset(image, width: 72,height: 82,);
}
