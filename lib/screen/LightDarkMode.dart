import 'package:flutter/material.dart';
import 'package:flutter_provider_series/provider/theme_mode.dart';
import 'package:provider/provider.dart';

class Mode extends StatefulWidget {
  const Mode({super.key});

  @override
  State<Mode> createState() => _ModeState();
}

class _ModeState extends State<Mode> {
  @override
  Widget build(BuildContext context) {


    print("build");

    return Scaffold(
      appBar: AppBar(title: Text('Light and Dark Mode'),),
      body: Column(
        children: [


          Consumer<ThemeChanger>(builder: (context,value,child){

            return  RadioListTile<ThemeMode>(

                title: Text('Light Mode'),
                value: ThemeMode.light,
                groupValue: value.themeMode,
                onChanged: value.setTheme);




          }),


          Consumer<ThemeChanger>(builder: (context,value,child){

            return  RadioListTile<ThemeMode>(
                title: Text('Dark Mode'),
                value: ThemeMode.dark,
                groupValue: value.themeMode,
                onChanged: value.setTheme);




          }
          ),






        ],


      ),


    );
  }
}
