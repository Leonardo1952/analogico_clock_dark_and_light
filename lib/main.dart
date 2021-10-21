import 'package:analog_clock_light_and_dark_theme/screens/models/my_thme_provider.dart';
import 'package:analog_clock_light_and_dark_theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'screens/home_screeen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => MyThemeModel(),
        child: Consumer<MyThemeModel>(
          builder: (context, theme, child) => MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Analog Clock',
            theme: themeData(context),
            darkTheme: darkThemeData(context),
            themeMode: theme.isLightTheme ? ThemeMode.light : ThemeMode.dark,
            home: const HomeScreen(),
          ),
        ));
  }
}
