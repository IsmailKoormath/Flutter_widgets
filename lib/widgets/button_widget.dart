

import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  String text2;
   ButtonWidget({super.key, required this.text2});

  @override
  Widget build(BuildContext context) {
    return
     Center(child: Column(
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
            child: Text(text2),),
               SizedBox(height: 50,),
            TextButton.icon(
              style: ButtonStyle(
                textStyle: MaterialStateProperty.all((TextStyle(
                fontSize: 30,
              ))),
              foregroundColor: MaterialStateProperty.all(Colors.red),),
              onPressed: (){}, icon: Icon(Icons.home), label: Text("Home"), ),   SizedBox(height: 50,),
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
                  textStyle: MaterialStateProperty.all(TextStyle(fontSize: 15),),
                ),
                onPressed: (){
                 print("bvx");
                }, child: Text("Sign In")),
                SizedBox(height: 50,),

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
       ) ;
      
  }
}