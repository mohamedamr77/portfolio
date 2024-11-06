import 'package:flutter/material.dart';

import 'introduction_section/introduction_section.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        IntroductionSection(),

      ],
    );
  }
}
