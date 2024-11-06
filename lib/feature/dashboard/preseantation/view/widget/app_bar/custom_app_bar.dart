import 'package:flutter/material.dart';
import '../../../../../../core/utils/size_config.dart';
import 'button_swtich_theme.dart';
import 'list_appbar_service_item.dart';

AppBar? customAppBar(BuildContext context) {
  return MediaQuery.of(context).size.width > SizeConfig.desktopSize
      ? AppBar(
          leading: const ButtonSwitchTheme(),
          title: const ListAppBarServiceItem())
      : AppBar();
}
