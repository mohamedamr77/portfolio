import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolioapp/feature/dashboard/preseantation/view_model/dashboard_controller/dashboard_state.dart';

class DashboardCubit extends Cubit<DashboardState> {
  DashboardCubit() : super(DashboardInitialState());
  int appBarServiceIndex = 0;
  int currentImageSliderImage = 0;

  final ScrollController scrollController = ScrollController();

  updateSelectedItemDrawerIndex(int index) {
    appBarServiceIndex = index;
    emit(DashboardAppBarServiceChangeIndexState());
  }

  updateCurrentImageSliderImage(int index) {
    currentImageSliderImage = index;
    emit(CurrentImageSliderImageState());
  }

  final GlobalKey homeKey = GlobalKey();
  final GlobalKey aboutMeKey = GlobalKey();
  final GlobalKey servicesKey = GlobalKey();
  final GlobalKey projectsKey = GlobalKey();
  final GlobalKey certificatesKey = GlobalKey();
  final GlobalKey contactKey = GlobalKey();

  void scrollToSection(GlobalKey key) {
    final context = key.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }
  }

  // Optionally, add a dispose method to clean up the scrollController.
  void dispose() {
    scrollController.dispose();
  }
}
