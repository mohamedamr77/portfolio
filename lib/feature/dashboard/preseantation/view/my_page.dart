// import 'package:flutter/material.dart';
//
// class MyPage extends StatelessWidget {
//   final GlobalKey homeKey = GlobalKey();
//   final GlobalKey aboutMeKey = GlobalKey();
//   final GlobalKey servicesKey = GlobalKey();
//   final GlobalKey projectsKey = GlobalKey();
//   final GlobalKey certificatesKey = GlobalKey();
//   final GlobalKey contactKey = GlobalKey();
//   final GlobalKey downloadCvKey = GlobalKey();
//
//   final ScrollController scrollController = ScrollController();
//
//   void scrollToSection(GlobalKey key) {
//     final context = key.currentContext;
//     if (context != null) {
//       Scrollable.ensureVisible(
//         context,
//         duration: const Duration(milliseconds: 500),
//         curve: Curves.easeInOut,
//       );
//     }
//   }