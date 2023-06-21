import 'package:flutter/material.dart';
import 'package:flutter_provider_series/provider/ExampleOne.dart';

import 'package:flutter_provider_series/provider/count%20provider.dart';
import 'package:flutter_provider_series/provider/favouriteExample.dart';
import 'package:flutter_provider_series/provider/theme_mode.dart';
import 'package:flutter_provider_series/screen/Favourite.dart';

import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    final themeChanger=Provider.of<ThemeChanger>(context);
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => CounterProvier(),
        ),
        ChangeNotifierProvider(
          create: (_) => ExampleOneProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => FavouriteExample(),
        ),
        ChangeNotifierProvider(
          create: (_) => ThemeChanger(),
        ),
      ],
      child: Builder(builder: (BuildContext context) {
        return MaterialApp(
          title: 'Flutter Provider',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: FavouriteScreen(),
        );
      }),
    );
  }
}
