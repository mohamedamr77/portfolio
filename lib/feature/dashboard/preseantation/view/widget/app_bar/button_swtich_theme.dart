import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/cubit/theme/get_cubit.dart';
import '../../../../../../core/cubit/theme/get_state.dart';
import '../../../../../../core/utils/app_color.dart';

class ButtonSwitchTheme extends StatelessWidget {
  const ButtonSwitchTheme({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetThemeCubit, GetThemeState>(
      builder: (context, state) {
        return Switch(
            // activeTrackColor: Theme.of(context).primaryColor,
            activeColor: AppSharedColors.accentOrange,
            value: BlocProvider.of<GetThemeCubit>(context).isDark,
            onChanged: (value) {
              BlocProvider.of<GetThemeCubit>(context).changeTheme(value);
            });
      },
    );
  }
}
