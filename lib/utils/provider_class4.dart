import 'package:flutter/material.dart';

class Class4 extends StatefulWidget {
  const Class4({super.key});

  @override
  State<Class4> createState() => _Class4State();
}

class _Class4State extends State<Class4> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text('Class 4 '),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,


        children: [


          Row(

            mainAxisAlignment: MainAxisAlignment.center,


            children: [

              Container(
                height: 150,
                width: 200,
                decoration: BoxDecoration(

                  color: Colors.amber,

                ),

              ),
              SizedBox(width: 10,),

              Container(
                height: 150,
                width: 200,
                decoration: BoxDecoration(

                  color: Colors.pinkAccent,

                ),
              ),

            ],


          ),





        ],


      ),




    );
  }
}
