
import 'package:flutter/material.dart';

class Notify extends StatelessWidget {
   Notify({super.key});


  ValueNotifier<int > _counter=ValueNotifier<int>(0);
  ValueNotifier<bool> _toggle=ValueNotifier<bool>(false);
  @override
  Widget build(BuildContext context) {
    print('builds');
    return Scaffold(
      appBar: AppBar(
        title: Text('Staless as Stateful',),centerTitle: true,
      ),
       body:Column(
         children: [


           ValueListenableBuilder(
               valueListenable: _toggle,
               builder: (context,value,child)
           {
             return Padding(
               padding: const EdgeInsets.all(15.0),
               child: TextFormField(
                 obscureText: _toggle.value,

                 decoration: InputDecoration(
                   enabled: true,
                   hintText:'Password ',
                   enabledBorder: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(12),
                   ), suffixIcon:InkWell(

                     onTap: () {
                       _toggle.value=!_toggle.value;


                     },

                     child: Icon(_toggle.value ? Icons.visibility_off  :Icons.visibility )),





                 ),






               ),


             );

           }),



           Center(
             child: ValueListenableBuilder(
                 valueListenable: _counter,
                 builder: (context,value,child)
                 {
                   return Text(_counter.value.toString(),style: TextStyle(fontSize: 30),);


                 }),

           ),


         ],


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
