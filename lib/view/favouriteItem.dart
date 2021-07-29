import 'package:flutter/material.dart';

class FavouriteItem extends StatefulWidget {
  const FavouriteItem({ Key? key }) : super(key: key);

  @override
  _FavouriteItemState createState() => _FavouriteItemState();
}

class _FavouriteItemState extends State<FavouriteItem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
     
      appBar: AppBar(
         backgroundColor: Colors.pink,
        title:Text("Favourite Item List")),
      body:Container(child:ListView.builder(itemCount: 3,
        itemBuilder: (context ,index) => Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(child: ListTile(title:Text("Books",style:TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 18)),
              subtitle: Text("sunt qui excepturi placeat culpa",
              style:TextStyle(fontWeight: FontWeight.bold,fontSize:16)),)),
            ),

          ],
        )))
    );
  }
}