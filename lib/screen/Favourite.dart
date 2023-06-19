import 'package:flutter/material.dart';
import 'package:flutter_provider_series/provider/favouriteExample.dart';
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

    final proSelect=Provider.of<FavouriteExample>(context);
    print('Build ');
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider Favourite  Example '),
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


                          proSelect.unSelected(index);
                        }
                        else
                        {
                          proSelect.Selected(index);


                        }

                        setState(() {});
                      },
                      title: Text('Item' + index.toString()),
                      trailing: proSelect.favourite.contains(index)
                          ? Icon(Icons.favorite)
                          : Icon(Icons.favorite_border_outlined),
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
