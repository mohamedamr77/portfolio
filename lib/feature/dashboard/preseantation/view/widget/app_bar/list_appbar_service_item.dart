import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolioapp/core/extentions/screen_size.dart';

import '../../../../data/model/app_bar_service_list.dart';
import '../../../view_model/dashboard_controller/dashboard_cubit.dart';
import '../../../view_model/dashboard_controller/dashboard_state.dart';
import 'app_service_body.dart';

class ListAppBarServiceItem extends StatelessWidget {
  const ListAppBarServiceItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 0.07.w),
      child: BlocBuilder<DashboardCubit, DashboardState>(
        builder: (context, state) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: List.generate(appBarServiceList.length, (index) {
              return Expanded(
                  child: AppBarServiceItem(
                      appBarServiceModel: appBarServiceList[index],
                      index: index));
            }),
          );
        },
      ),
    );
  }
}
