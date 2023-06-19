import 'package:flutter/material.dart';
import 'package:flutter_provider_series/provider/favouriteExample.dart';
import 'package:flutter_provider_series/screen/MostFaV.dart';
import 'package:provider/provider.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  List<int> favSelected = [];

  @override
  Widget build(BuildContext context) {


    print('Build ');
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider Favourite  Example '),

        actions: [InkWell(
            onTap: () {

              Navigator.push(context, MaterialPageRoute(builder:(context) =>MostFavScreen() ,));
            },

            child: Icon(Icons.favorite))],
      ),
      body: Column(
        children: [
         Expanded(
           child: ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index,) {
                  return  Consumer<FavouriteExample>(builder: (context,value,child)
                  {
                    return ListTile(
                      onTap: () {
                        if(value.favourite.contains(index))
                        {


                          value.unSelected(index);
                        }
                        else
                        {
                          value.Selected(index);


                        }


                      },
                      title: Text('Item' + index.toString()),
                      trailing:  Icon(value.favourite.contains(index) ? Icons.favorite : Icons.favorite_border_outlined),




                    );


                  });
                },
              ),
         ),










        ],
      ),
    );
  }
}
