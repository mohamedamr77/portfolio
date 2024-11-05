import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolioapp/core/cubit/theme/get_cubit.dart';
import 'package:portfolioapp/core/cubit/theme/get_state.dart';
import 'package:portfolioapp/core/shared_widget/custom_elevated_btn.dart';
import 'package:portfolioapp/core/utils/app_color.dart';
import 'package:portfolioapp/feature/dashboard/preseantation/view/widget/dashboard_body.dart';

class DashboardScreen extends StatelessWidget {
  static const id = "/DashboardScreen";

  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BlocBuilder<GetThemeCubit, GetThemeState>(
          builder: (context, state) {
            return  Switch(
              // activeTrackColor: Theme.of(context).primaryColor,
                activeColor: AppSharedColors.accentOrange,
                value: BlocProvider.of<GetThemeCubit>(context).isDark,
                onChanged: (value) {
                  BlocProvider.of<GetThemeCubit>(context).changeTheme(value);
                });
          },
        ),
        title: Row(
          children: [
            CustomElevatedButton(onPress: (){}, child: Text("dafaas"), btnColor: AppSharedColors.accentOrange,)
          ],
        ),
      ),
      body: const DashboardBody(),
    );
  }
}
