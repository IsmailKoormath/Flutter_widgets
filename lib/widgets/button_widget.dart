import 'dart:html';
import 'dart:math';

import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});

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
        body: Center(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
         TextButton(
          style: ButtonStyle(
            textStyle: MaterialStateProperty.all((TextStyle(
              fontSize: 30
            ))),
            foregroundColor: MaterialStateProperty.all(Colors.red)),
            onPressed: (){
              // log("clicked");
            },
            child: Text("Text button"))
            ])
       ) );
      
  }
}