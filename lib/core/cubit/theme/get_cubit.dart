import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';

import '../../utils/const_box.dart';
import 'get_state.dart';

class GetThemeCubit extends Cubit<GetThemeState> {
  GetThemeCubit() : super(GetThemeState());
  bool isDark = true;

  void initTheme() {
    if (state is ChangeThemingState) {
      emit(GetThemeState());
    }
    var box = Hive.box(BoxApp.kThemeBox);
    final isDark = box.get(
      "isDark",
      defaultValue: true,
    );
    this.isDark = isDark;
    emit(ChangeThemingState());
  }

  void changeTheme(bool isDark) async {
    var box = Hive.box(BoxApp.kThemeBox);
    await box.put("isDark", isDark);
    this.isDark = isDark;
    emit(ChangeThemingState());
  }

  setSwitchValueFromHive() {
    var box = Hive.box(BoxApp.kThemeBox);
    isDark = box.get('isDark') ?? true;
  }
}
