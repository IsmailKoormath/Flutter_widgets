import 'package:flutter/material.dart';

class TextfieldWidget extends StatelessWidget {
  String text;
   TextfieldWidget({super.key, required this.text
  });

  @override
  Widget build(BuildContext context) {
  //  String text='';
    
     return 
    // Scaffold (
    //     appBar: AppBar(
    //       title: Text("Sample App"),
    //       centerTitle: true,
    //       backgroundColor: Colors.red[600],
    //       leading: Icon(Icons.menu),
    //       actions: [
    //         IconButton(onPressed: (){}, icon: Icon(Icons.search)),
    //         IconButton(onPressed: (){}, icon: Icon(Icons.more_vert))
    //       ],

    //       shape:RoundedRectangleBorder(borderRadius: BorderRadius.vertical(
    //         bottom: Radius.circular(20),
    //         top: Radius.circular(20)
    //       )),
          
    //       // shadow effect
    //       elevation: 10.5,
        
    //     ),
       // body:
         Padding(
padding: EdgeInsets.all(15.0),
child: Center(
  child: Column(children:  [
    TextField(
      decoration: InputDecoration(labelText:text,
      labelStyle: TextStyle(
        fontSize: 15,
        color: Colors.blue,
      ),
      hintText:"enter user name",
      prefixText: "Mr ",
      suffixIcon: Text("hello"),
      helperText: "enter your username, atleast 6 characters ",

    ),
      
    ),
    TextField(
      decoration: InputDecoration(labelText: "Password",
      hintText: "Enter your Password",
      prefixIcon: Icon(Icons.lock),
      suffixIcon: Icon(Icons.verified) ),
      
    ),
    TextField(
      decoration: InputDecoration(labelText: "Secure Password",
       helperText: "hide password  keyboad type number"),
      maxLength: 10,
    obscureText: true,
    keyboardType: TextInputType.number,
   
    ),
    TextField(
      decoration: InputDecoration(labelText: "Email",
      labelStyle: TextStyle(color: Colors.pink),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
borderSide: BorderSide(color: Colors.pink,width:2),

      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
borderSide: BorderSide(color: Colors.pink,width:2),

      )
      
      )
    ),
    TextField(
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.blue.shade50
      ),
    )
  ]),
),
        )
        ;}
        }