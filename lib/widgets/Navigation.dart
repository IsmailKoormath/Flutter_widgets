import 'package:first_app/widgets/text.dart';
import 'package:flutter/material.dart';

class Navigation extends StatelessWidget {
  const Navigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigation example"),
        centerTitle: true,
        backgroundColor: Colors.red[600],
          leading: Icon(Icons.menu),
          elevation: 10.5, 
      ),
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             ElevatedButton(onPressed: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>TextWidget()));
             }, child: Text("Product page",style: TextStyle(fontSize: 20),)),
            
          ],
        )
        
      ),
    );
  }
}