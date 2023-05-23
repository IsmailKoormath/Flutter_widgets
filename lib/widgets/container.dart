import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold (
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
        body: Center(
          
          child:Container(
            // color: Colors.green,
            height: 300,
            // width: double.infinity,
            width: 300,
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(20),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color:  Colors.red,
              border: Border.all(color:Colors.green,width: 5),
              borderRadius: BorderRadius.circular(50),
              boxShadow:const [
                BoxShadow(
                  color: Colors.black,offset:Offset (5, 5),blurRadius: 20
                )
              ]
            ),

          child: Text("Somthing",style: TextStyle(fontSize: 40, color: Colors.white),),

          ),
        ),
      );
  }
}