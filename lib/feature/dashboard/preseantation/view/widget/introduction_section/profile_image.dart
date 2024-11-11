import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:portfolioapp/core/cubit/theme/get_cubit.dart';
import 'package:portfolioapp/core/cubit/theme/get_state.dart';
import 'package:portfolioapp/core/extentions/screen_size.dart';
import 'package:portfolioapp/core/utils/app_images.dart';

import '../../../../../../core/utils/const_box.dart';
import '../../../../../../core/utils/size_config.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetThemeCubit, GetThemeState>(
      builder: (context, state) {
        return Image(
          image: AssetImage(
            Hive.box(BoxApp.kThemeBox).get('isDark') == true ||
                    BlocProvider.of<GetThemeCubit>(context).isDark
                ? AppImages.moAmrCircleBlack
                : AppImages.moAmrCircleWhite,
          ),
          height: MediaQuery.sizeOf(context).width > SizeConfig.tabletSize
              ? 250
              : 200,
          width: MediaQuery.sizeOf(context).width > SizeConfig.tabletSize
              ? 300
              : 200,
        );
      },
    );
  }
}
