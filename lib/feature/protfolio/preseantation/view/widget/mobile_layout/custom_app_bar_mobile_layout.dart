import 'package:flutter/material.dart';

class CustomAppBarMobileLayout extends StatelessWidget {
  const CustomAppBarMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: IconButton(
        onPressed: () {
          Scaffold.of(context).openEndDrawer();
        },
        icon:  const Icon(Icons.dashboard_customize_rounded),
      ),
    );
  }
}
