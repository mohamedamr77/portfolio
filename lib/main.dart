import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolioapp/core/cubit/theme/get_cubit.dart';
import 'package:portfolioapp/core/cubit/theme/get_state.dart';
import 'package:portfolioapp/core/utils/app_color.dart';
import 'core/navigation/navigation_manager.dart';
import 'core/navigation/routes.dart';
import 'core/utils/const_variables.dart';
import 'feature/dashboard/preseantation/view/dashboard_screen.dart';

void main() {
  runApp(BlocProvider(
    create: (context) => GetThemeCubit(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        wd = constraints.maxWidth;
        ht = constraints.maxHeight;
        return SafeArea(
          child: BlocBuilder<GetThemeCubit, GetThemeState>(
            builder: (context, state) {
              return MaterialApp(
                debugShowCheckedModeBanner: false,
                theme: lightMode,
                darkTheme: darkMode,
                themeMode: BlocProvider
                    .of<GetThemeCubit>(context)
                    .isDark
                    ? ThemeMode.dark
                    : ThemeMode.light,
                navigatorKey: NavigationManager.navigationKey,
                routes: AppRouter.routes,
                initialRoute: DashboardScreen.id,
              );
            },
          ),
        );
      },
    );
  }
}
