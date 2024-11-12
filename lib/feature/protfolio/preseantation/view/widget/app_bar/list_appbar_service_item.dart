import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolioapp/core/extentions/screen_size.dart';
import '../../../view_model/dashboard_controller/dashboard_cubit.dart';
import '../../../view_model/dashboard_controller/dashboard_state.dart';
import 'app_bar_service_body.dart';

class ListAppBarServiceItem extends StatelessWidget {
  const ListAppBarServiceItem({super.key, required this.appBarServiceList});
  final List appBarServiceList;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 0.07.w),
      child: BlocBuilder<PortfolioCubit, PortfolioState>(
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
