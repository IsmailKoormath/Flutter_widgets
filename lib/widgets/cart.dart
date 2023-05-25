import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
children:  [
  Padding(
    padding: EdgeInsets.all(10.0),
    child: Card(color: Colors.blueGrey,
    child: Column(
      children: [
        ListTile(
          title:Text("Cart 1"),
          subtitle: Text("example for subtitle"),
          textColor: Colors.white,
          leading: Icon(Icons.movie),
          iconColor: Colors.white,
          trailing:Icon(Icons.more_horiz),
          onTap: (){},
        )
      ],
    ),),
  ),
  Padding(
    padding: EdgeInsets.all(10.0),
    child: Card(color: Colors.blueGrey,
    shadowColor: Colors.red,
    elevation: 30,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20)
    ),
    child: Column(
      children: [
        ListTile(
          title:Text("Cart 2"),
          subtitle: Text("example for subtitle 2"),
          textColor: Colors.white,
          leading: Icon(Icons.movie),
          iconColor: Colors.white,
          trailing:Icon(Icons.more_horiz),
          onTap: (){},
        )
      ],
    ),),
  ),
   Padding(
    padding: EdgeInsets.all(10.0),
    child: Card(color: Colors.blueGrey,
    child: Column(
      children: [
        ListTile(
          title:Text("Cart 1"),
          subtitle: Text("example for subtitle"),
          textColor: Colors.white,
          leading: Icon(Icons.movie),
          iconColor: Colors.white,
          trailing:Icon(Icons.more_horiz),
          onTap: (){},
        )
      ],
    ),),
  ),
  Padding(
    padding: EdgeInsets.all(10.0),
    child: Card(color: Colors.blueGrey,
    shadowColor: Colors.red,
    elevation: 30,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20)
    ),
    child: Column(
      children: [
        ListTile(
          title:Text("Cart 2"),
          subtitle: Text("example for subtitle 2"),
          textColor: Colors.white,
          leading: Icon(Icons.movie),
          iconColor: Colors.white,
          trailing:Icon(Icons.more_horiz),
          onTap: (){},
        )
      ],
    ),),
  )
],
    );
  }
}