

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_provider_series/provider/count%20provider.dart';
import 'package:provider/provider.dart';


class Class3 extends StatefulWidget {
  const Class3({super.key});

  @override
  State<Class3> createState() => _Class3State();
}

class _Class3State extends State<Class3> {


@override
  void initState() {
    // TODO: implement initState
    super.initState();
    final countProvider=Provider.of<CounterProvier>(context,listen: false);
    Timer.periodic(Duration(microseconds: 1), (timer) {
  countProvider.addCounter();



    });
  }


  @override
  Widget build(BuildContext context) {

    var pcount=Provider.of<CounterProvier>(context,listen:false);
    print('build ');
    return  Scaffold(
      appBar: AppBar(title: Text("Provider Class 3")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [


              Consumer<CounterProvier>(builder: (context,value,child)
              {


               return Text(value.count.toString(),style: TextStyle(fontSize: 45,fontWeight: FontWeight.bold),);


              }
              )

          ],



        ),


      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 50),
        child: FloatingActionButton(

          onPressed: (){
        pcount.addCounter();
          },
          child: Icon(Icons.add),

        ),
      ),


    );
  }
}
