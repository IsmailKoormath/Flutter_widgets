import 'package:flutter/material.dart';

class BloodDonation extends StatelessWidget {
  const BloodDonation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Blood Dotation App"),
        backgroundColor: Colors.orange,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(onPressed: (){
Navigator.pushNamed(context, "/add");
      },child: Icon(Icons.add),),
   
        
      );
  
  }
}