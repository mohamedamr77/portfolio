import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolioapp/feature/dashboard/preseantation/view_model/dashboard_controller/dashboard_state.dart';

class DashboardCubit extends Cubit<DashboardState> {
  DashboardCubit() : super(DashboardInitialState());
  int appBarServiceIndex = 0;
  int currentImageSliderImage = 0;
  updateSelectedItemDrawerIndex(int index) {
    appBarServiceIndex = index;
    debugPrint("appBarServiceIndex = $index");
    emit(DashboardAppBarServiceChangeIndexState());
  }

  updateCurrentImageSliderImage(int index) {
    currentImageSliderImage = index;
    debugPrint("currentImageSliderImage = $index");
    emit(CurrentImageSliderImageState());
  }
}
