import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolioapp/core/extentions/screen_size.dart';

import '../../../../../../core/shared_widget/custom_elevated_btn.dart';
import '../../../../../../core/shared_widget/global_text.dart';
import '../../../../../../core/utils/app_color.dart';
import '../../../../data/model/app_bar_service_model.dart';
import '../../../view_model/dashboard_controller/dashboard_cubit.dart';

class AppBarServiceItem extends StatelessWidget {
  const AppBarServiceItem(
      {super.key, required this.appBarServiceModel, required this.index});
  final AppBarServiceModel appBarServiceModel;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 0.01.w),
      child: CustomElevatedButton(
        borderRadius: BorderRadius.circular(8),
        btnColor:
            BlocProvider.of<DashboardCubit>(context).appBarServiceIndex == index
                ? AppSharedColors.accentOrange
                : Theme.of(context).scaffoldBackgroundColor,
        onPress: () {
          appBarServiceModel.onTap?.call();
          BlocProvider.of<DashboardCubit>(context)
              .updateSelectedItemDrawerIndex(index);
        },
        child: FittedBox(
          child: GText(
            color: Theme.of(context).primaryColor,
            content: appBarServiceModel.title,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
