import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:portfolioapp/core/cubit/theme/get_cubit.dart';
import 'package:portfolioapp/core/cubit/theme/get_state.dart';
import 'package:portfolioapp/core/utils/app_images.dart';

import '../../../../../../core/utils/const_box.dart';
import '../../../../../../core/utils/size_config.dart';

class ProfileImage extends StatefulWidget {
  const ProfileImage({super.key});

  @override
  State<ProfileImage> createState() => _ProfileImageState();
}

class _ProfileImageState extends State<ProfileImage> with TickerProviderStateMixin {
  late AnimationController _controller;
  bool isReversed = false;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetThemeCubit, GetThemeState>(
      builder: (context, state) {
        return TweenAnimationBuilder(
          tween: isReversed ?
             Tween<double>(begin: 0.95, end: 1)
            : Tween<double>(begin: 1, end: 0.95),
          duration: const Duration(seconds: 1),
          builder: (BuildContext context, double value, Widget? child) {
            return Transform.scale(
              scale: value,
              child: child,
            );
          },
          onEnd: () {
            isReversed=! isReversed;
            setState(() {});
          },
          child: _buildImage(),
        );
      },
    );
  }

  Widget  _buildImage(){
    return Image(
      image: AssetImage(
        Hive.box(BoxApp.kThemeBox).get('isDark')  == null || Hive.box(BoxApp.kThemeBox).get('isDark') == true
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
  }
}
