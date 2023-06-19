import 'package:flutter/material.dart';
import 'package:flutter_provider_series/provider/favouriteExample.dart';
import 'package:provider/provider.dart';

class MostFavScreen extends StatefulWidget {
  const MostFavScreen({super.key});

  @override
  State<MostFavScreen> createState() => _MostFavScreenState();
}

class _MostFavScreenState extends State<MostFavScreen> {
  @override
  Widget build(BuildContext context) {
  final provider=Provider.of<FavouriteExample>(context);

    print('Build ');
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider Favourite  Example '),

      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: provider.favourite.length,
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
