import 'package:flutter/material.dart';
import 'package:flutter_provider_series/provider/ExampleOne.dart';
import 'package:provider/provider.dart';

class Class4 extends StatefulWidget {
  const Class4({super.key});

  @override
  State<Class4> createState() => _Class4State();
}

class _Class4State extends State<Class4> {
  double value = 1.0;

  @override
  Widget build(BuildContext context) {
    print(' build');
    return Scaffold(
      appBar: AppBar(
        title: Text('Class 4 '),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<ExampleOneProvider>(builder: (context,value,child)

          {
            return Slider(
                max: 1,
                min: 0,
                value: value.value,
                onChanged: (val) {
                  print(value);

                  value.setValue(val);
                });



          }

          ),

          Consumer<ExampleOneProvider>(builder: (context,value,child)
          {
            return   Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 150,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.amber.withOpacity(value.value),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 150,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.pinkAccent.withOpacity(value.value),
                  ),
                ),
              ],
            );



          }

          ),





        ],
      ),
    );
  }
}
