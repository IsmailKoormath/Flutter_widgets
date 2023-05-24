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
            child: Text("Text button")),
            TextButton.icon(
              style: ButtonStyle(
                textStyle: MaterialStateProperty.all((TextStyle(
                fontSize: 30,
              ))),
              foregroundColor: MaterialStateProperty.all(Colors.red)),
              onPressed: (){}, icon: Icon(Icons.home), label: Text("Home") ),
              ElevatedButton(
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.only(
                    left: 50,
                    right: 50,
                    top: 10,
                    bottom: 10,
                  )),
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                  backgroundColor: MaterialStateProperty.all(Colors.red),
                  // minimumSize: MaterialStateProperty.all(Size(200,40))
                  textStyle: MaterialStateProperty.all(TextStyle(fontSize: 15))
                ),
                onPressed: (){
                  log(4);
                }, child: Text("Sign In")),

                OutlinedButton(
                  style: ButtonStyle(
                   shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                   )),
                   side: MaterialStateProperty.all(BorderSide(color: Colors.yellow,
                   width: 2)),
                   textStyle: MaterialStateProperty.all(TextStyle(fontSize: 12)),
                    minimumSize: MaterialStateProperty.all(Size(200,40)),
                   foregroundColor: MaterialStateProperty.all(Colors.black)
                  
                  ),
                  onPressed: (){}, child: Text("Login"))
        ])
       ) );
      
  }
}