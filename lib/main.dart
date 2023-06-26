import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_provider_series/provider/theme_mode.dart';
import 'package:flutter_provider_series/screen/LightDarkMode.dart';
import 'package:flutter_provider_series/screen/Notify.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeChanger(),
      child: Builder(
        builder: (BuildContext context) {
          final themeChanger = Provider.of<ThemeChanger>(context);

          return MaterialApp(
            title: 'Flutter Provider',
            theme: ThemeData(
              brightness: Brightness.light,
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            themeMode: themeChanger.themeMode,
            darkTheme: ThemeData(brightness: Brightness.dark,
             appBarTheme: AppBarTheme(backgroundColor: Colors.amber)

            ),
            home: Notify(),
          );
        },
      ),
    );
  }
}

void main() {
  runApp(const MyApp());
}