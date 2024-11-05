import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolioapp/core/cubit/theme/get_cubit.dart';
import 'package:portfolioapp/core/cubit/theme/get_state.dart';
import 'package:portfolioapp/core/extentions/screen_size.dart';
import 'package:portfolioapp/core/shared_widget/custom_elevated_btn.dart';
import 'package:portfolioapp/core/shared_widget/global_text.dart';
import 'package:portfolioapp/core/utils/app_color.dart';
import 'package:portfolioapp/core/utils/app_text.dart';
import 'package:portfolioapp/core/utils/size_config.dart';
import 'package:portfolioapp/feature/dashboard/preseantation/view/widget/dashboard_body.dart';

class DashboardScreen extends StatelessWidget {
  static const id = "/DashboardScreen";

  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MediaQuery.of(context).size.width > SizeConfig.desktopSize
          ? AppBar(
              leading: BlocBuilder<GetThemeCubit, GetThemeState>(
                builder: (context, state) {
                  return Switch(
                      // activeTrackColor: Theme.of(context).primaryColor,
                      activeColor: AppSharedColors.accentOrange,
                      value: BlocProvider.of<GetThemeCubit>(context).isDark,
                      onChanged: (value) {
                        BlocProvider.of<GetThemeCubit>(context)
                            .changeTheme(value);
                      });
                },
              ),
              title: Padding(
                padding: EdgeInsets.only(left: 0.07.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: List.generate(7, (index) {
                    return Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(right: 0.01.w),
                        child: CustomElevatedButton(
                          borderRadius: BorderRadius.circular(8),
                          onPress: () {},
                          btnColor:
                          index ==6 ?
                          AppSharedColors.accentOrange
                          :
                             Theme.of(context).scaffoldBackgroundColor,
                          child: FittedBox(
                            child: GText(
                              color: Theme.of(context).primaryColor,
                              content: list1[index],
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ),
            )
          : AppBar(),
      body: const DashboardBody(),
    );
  }
}

List<String> list1 = [
  AppText.home,
  AppText.aboutMe,
  AppText.services,
  AppText.projects,
  AppText.testimonials,
  AppText.contact,
  AppText.downloadCv,
];
