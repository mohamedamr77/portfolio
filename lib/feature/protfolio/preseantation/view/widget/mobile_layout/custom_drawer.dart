import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolioapp/core/navigation/navigation_manager.dart';
import 'package:portfolioapp/core/shared_widget/global_text.dart';

import '../../../../data/model/app_bar_service_list.dart';
import '../../../view_model/dashboard_controller/dashboard_cubit.dart';
import '../app_bar/button_swtich_theme.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var cubit = BlocProvider.of<PortfolioCubit>(context);
    return Drawer(
        child: Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          ListView.separated(
            shrinkWrap: true,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Card(
                    child: ListTile(
                      onTap: () {
                        NavigationManager.goBack();
                        getAppBarServiceList(cubit)[index].onTap?.call();
                      },
                      title: GText(
                          content: getAppBarServiceList(cubit)[index].title,
                          fontSize: 21),
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) => const SizedBox(
                height: 10,
              ),
              itemCount: getAppBarServiceList(cubit).length),
           const Padding(
             padding: EdgeInsets.symmetric(horizontal: 10),
             child: Card(
               child: ListTile(
                 title: GText(content: "Dark Mode", fontSize: 21),
                  trailing : ButtonSwitchTheme(),
               ),
             ),
           )
        ],
      )
    ));
  }
}