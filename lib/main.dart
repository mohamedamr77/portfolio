import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:portfolioapp/core/cubit/theme/get_cubit.dart';
import 'package:portfolioapp/core/cubit/theme/get_state.dart';
import 'package:portfolioapp/core/utils/app_color.dart';
import 'core/navigation/navigation_manager.dart';
import 'core/navigation/routes.dart';
import 'core/utils/const_box.dart';
import 'core/utils/const_variables.dart';
import 'feature/dashboard/preseantation/view/dashboard_screen.dart';
import 'feature/dashboard/preseantation/view_model/dashboard_controller/dashboard_cubit.dart';
import 'package:device_preview/device_preview.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox(BoxApp.kThemeBox);

  runApp(MultiBlocProvider(
    providers: [
      BlocProvider(
        create: (context) => GetThemeCubit(),
      ),
      BlocProvider(
        create: (context) => DashboardCubit(),
      ),
    ],
    child:  DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) {
          return const MyApp();
        }
    ),
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
                themeMode: Hive.box(BoxApp.kThemeBox).get('isDark') == null ||
                    Hive.box(BoxApp.kThemeBox).get('isDark') == true
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
