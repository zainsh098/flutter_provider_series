
import 'package:flutter/material.dart';

class Notify extends StatelessWidget {
   Notify({super.key});


  ValueNotifier<int > _counter=ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    print('builds');
    return Scaffold(
      appBar: AppBar(
        title: Text('Staless as Stateful',),centerTitle: true,
      ),
       body:Center(
         child: ValueListenableBuilder(
             valueListenable: _counter,
             builder: (context,value,child)
         {
           return Text(_counter.value.toString(),style: TextStyle(fontSize: 30),);
           
           
         }),

       ),
      
      floatingActionButton: 
      FloatingActionButton(
          onPressed: () {
            
            _counter.value++;
            print(_counter.value.toString());
            
          },
      child: Icon(Icons.add),),




    );
  }
}
