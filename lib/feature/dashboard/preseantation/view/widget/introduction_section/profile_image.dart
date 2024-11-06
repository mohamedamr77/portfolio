import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:portfolioapp/core/extentions/screen_size.dart';
import 'package:portfolioapp/core/utils/app_images.dart';

import '../../../../../../core/utils/const_box.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage(
        Hive.box(BoxApp.kThemeBox).get('isDark') == true
            ? AppImages.moAmrCircleBlack
            : AppImages.moAmrCircleWhite,
      ),
      height: 0.42.h,
      width: 0.2.w,
    );
  }
}
