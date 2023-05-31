import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold (
        appBar: AppBar(
          title: Text("Sample App"),
          
        
        ),
        body: Center( child:Column(children: [
          Text("flutter app",style: TextStyle(fontSize: 40,
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
          
        ]),),
       ElevatedButton(onPressed: (){
          Navigator.pushNamed(context,'/radio');
        }, child: Text("Radio button page"))
        ],) 
        )
         );
      
  }
}