import 'package:flutter/material.dart';
import 'package:portfolioapp/feature/dashboard/preseantation/view/widget/app_bar/button_swtich_theme.dart';

class CustomAppBarMobileLayout extends StatelessWidget {
  const CustomAppBarMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: IconButton(
        onPressed: () {
          Scaffold.of(context).openEndDrawer();
        },
        icon: const Icon(Icons.dashboard_customize_rounded),
      ),
      leading: const ButtonSwitchTheme(),
    );
  }
}
