import 'package:flutter/material.dart';
import 'package:flutter_provider_series/provider/ExampleOne.dart';

import 'package:flutter_provider_series/provider/count%20provider.dart';
import 'package:flutter_provider_series/provider/favouriteExample.dart';
import 'package:flutter_provider_series/screen/Favourite.dart';
import 'package:flutter_provider_series/utils/provider_class4.dart';


import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MultiProvider(


        providers: [
          ChangeNotifierProvider(create:  (_) => CounterProvier(),),
          ChangeNotifierProvider(create:  (_) => ExampleOneProvider(),),
          ChangeNotifierProvider(create:  (_) => FavouriteExample(),)


        ],
        child: Builder(builder: (BuildContext context)
        {
          return MaterialApp(
            title: 'Flutter Provider',
            theme: ThemeData(

              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            home: FavouriteScreen() ,
          );



        }),


    );







  }
}

