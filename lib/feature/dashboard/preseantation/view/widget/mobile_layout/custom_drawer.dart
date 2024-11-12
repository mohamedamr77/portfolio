import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolioapp/core/navigation/navigation_manager.dart';
import 'package:portfolioapp/core/shared_widget/global_text.dart';
import 'package:portfolioapp/feature/dashboard/data/model/app_bar_service_list.dart';
import 'package:portfolioapp/feature/dashboard/preseantation/view_model/dashboard_controller/dashboard_cubit.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key,});

  @override
  Widget build(BuildContext context) {
    var cubit = BlocProvider.of<DashboardCubit>(context);
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: ListView.separated(
            itemBuilder: (context, index) {
              return Padding(
                padding:  const EdgeInsets.symmetric(horizontal: 10),
                child: Card(
                  child: ListTile(
                    onTap: (){
                      NavigationManager.goBack();
                      getAppBarServiceList(cubit)[index].onTap?.call();
                    },
                     title:  GText(content:  getAppBarServiceList(cubit)[index].title, fontSize: 21),
                  ),
                ),
              );

        }, separatorBuilder: (context, index) => const SizedBox(height: 10,),
            itemCount:  getAppBarServiceList(cubit).length),
      )
    );
  }
}
