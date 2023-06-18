import 'package:flutter/material.dart';
import 'package:flutter_provider_series/Counter.dart';
import 'package:flutter_provider_series/provider/count%20provider.dart';

import 'package:flutter_provider_series/utils/Provider%20Class%203.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(

        create: (_) => CounterProvier(),
        child: Builder(builder: (BuildContext context)
        {
          return MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(

              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            home: Class3() ,
          );



        }),


    );







  }
}

