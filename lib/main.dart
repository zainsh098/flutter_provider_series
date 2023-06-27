import 'package:flutter/material.dart';
import 'package:flutter_provider_series/provider/ExampleOne.dart';
import 'package:flutter_provider_series/provider/auth_provider.dart';
import 'package:flutter_provider_series/provider/count%20provider.dart';
import 'package:flutter_provider_series/provider/favouriteExample.dart';
import 'package:flutter_provider_series/provider/theme_mode.dart';

import 'package:flutter_provider_series/screen/login.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [

      ChangeNotifierProvider(create: (_) => CounterProvier()),
      ChangeNotifierProvider(create: (_) => ExampleOneProvider()),
      ChangeNotifierProvider(create: (_) => FavouriteExample()),
      ChangeNotifierProvider(create: (_) => ThemeChanger()),
      ChangeNotifierProvider(create: (_) => AuthProvider()),




    ],
    child: Builder(builder: (BuildContext context)

    {
      final themeChanger=Provider.of<ThemeChanger>(context);
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
    home: Login(),
    );


    }

    ),




    );
  }
}

void main() {
  runApp(const MyApp());
}