import 'package:flutter/material.dart';
import '../../../../../../core/utils/size_config.dart';
import 'button_swtich_theme.dart';
import 'list_appbar_service_item.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;
  final List appBarServiceList;
  const CustomAppBar({super.key, required this.appBarServiceList})
      : preferredSize = const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return MediaQuery.of(context).size.width > SizeConfig.desktopSize
        ?  ListTile(
            leading: const ButtonSwitchTheme(),
            title: ListAppBarServiceItem(appBarServiceList: appBarServiceList,),
          )
        : const SizedBox.shrink();
  }
}
