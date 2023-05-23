import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold (
        appBar: AppBar(
          title: Text("Sample App"),
          centerTitle: true,
          backgroundColor: Colors.red[600],
          leading: Icon(Icons.menu),
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.search)),
            IconButton(onPressed: (){}, icon: Icon(Icons.more_vert))
          ],

          shape:RoundedRectangleBorder(borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
            top: Radius.circular(20)
          )),
          
          // shadow effect
          elevation: 10.5,
        
        ),
        body: Center( child: Text("flutter app",style: TextStyle(fontSize: 40,
        color: Colors.green,
        fontStyle: FontStyle.italic,
        letterSpacing: 5,
        wordSpacing: 20,
        backgroundColor: Colors.yellow,
        shadows: const [
          Shadow(
            color:Colors.black,
            offset: Offset(5, 5),
            blurRadius: 5
          )
          
        ]),))
         );
      
  }
}