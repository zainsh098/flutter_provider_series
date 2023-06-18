

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_provider_series/Counter.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {



  int count=0;
    Timer? timer;

    @override
  void initState() {
    // TODO: implement initState
    super.initState();
    timer=Timer.periodic(Duration(seconds: 2), (timer) {
     var pro=Provider.of<Counter>(context,listen: false);
     pro.addCounter();
    });


  }


  @override
  Widget build(BuildContext context) {
      print("build $count");
    return Scaffold(
      appBar: AppBar(title: Text('Provider Class 1'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<Counter>(builder: (context,value,child){

              return Text(value.counter.toString(),style: TextStyle(fontSize: 20),);



            }),


          ],



        ),


      ),


    );
  }
}
