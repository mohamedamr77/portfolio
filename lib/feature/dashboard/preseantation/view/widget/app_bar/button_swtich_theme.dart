import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import '../../../../../../core/cubit/theme/get_cubit.dart';
import '../../../../../../core/cubit/theme/get_state.dart';
import '../../../../../../core/utils/app_color.dart';
import '../../../../../../core/utils/const_box.dart';

class ButtonSwitchTheme extends StatelessWidget {
  const ButtonSwitchTheme({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetThemeCubit, GetThemeState>(
      builder: (context, state) {
        return Switch(
            // activeTrackColor: Theme.of(context).primaryColor,
            activeColor: AppSharedColors.accentOrange,
            value: Hive.box(BoxApp.kThemeBox).get('isDark'),
            onChanged: (value) {
              BlocProvider.of<GetThemeCubit>(context).changeTheme(value);
            });
      },
    );
  }
}
