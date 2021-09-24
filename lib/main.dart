import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'utils/export.dart';
import 'logic/bottom_navigation_cubit.dart';
import 'logic/theme_cubit.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: <BlocProvider<dynamic>>[
          BlocProvider<ThemeCubit>(
            create: (BuildContext context) => ThemeCubit(),
          ),
          BlocProvider<BottomNavigationCubit>(
            create: (BuildContext context) => BottomNavigationCubit(),
          ),
        ],
        child: BlocBuilder<ThemeCubit, ThemeData>(
          builder: (BuildContext context, ThemeData state) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: state,
              initialRoute: Routes.entryPoint,
              onGenerateRoute: Routes.generateRoute,
            );
          },
        ));
  }
}
