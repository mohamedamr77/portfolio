import 'package:flutter/material.dart';
import '../../../../../../core/utils/size_config.dart';
import 'button_swtich_theme.dart';
import 'list_appbar_service_item.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;

  const CustomAppBar({super.key})
      : preferredSize = const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return MediaQuery.of(context).size.width > SizeConfig.desktopSize
        ? const ListTile(
            leading: ButtonSwitchTheme(),
            title: ListAppBarServiceItem(),
          )
        : const SizedBox.shrink();
  }
}
