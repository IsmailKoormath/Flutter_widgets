import 'package:flutter/material.dart';

class RadioWidget extends StatefulWidget {
  const RadioWidget({super.key});

  @override
  State<RadioWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<RadioWidget> {

  String? gender;
String? status;

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
        body:Center(
          child: Column(
            children: [
              Container(
                color: Colors.amberAccent,
                child:Column(
                  children: [
                 Text("Select your gender",style: TextStyle(fontSize: 20),),
                 ListTile(
                  title: Text("male"),
                  leading: Radio(value: "male", groupValue: gender, onChanged: (value){
                  setState(() {
                    gender=value;
                  });
                 })
                 ),
                 ListTile(
                  title: Text("female"),
                  leading: Radio(value: "female", groupValue: gender, onChanged: (value){
                  setState(() {
                    gender=value;
                  });
                 })
                 ),
                 ListTile(
                  title: Text("other"),
                  leading: Radio(value: "other", groupValue: gender, onChanged: (value){
                  setState(() {
                    gender=value;
                  });
                 })
                 ),
                

                  ],
                )
              ),
              Container(
                child: Column(
                  children: [
                    Text("Merital status",style: TextStyle(fontSize: 20),),
                    RadioListTile(title:Text("Married"),  value: "married", groupValue: status, onChanged: (value){
                      setState(() {
                        status=value;
                      });
                    }),
                    RadioListTile(title:Text("unMarried"),activeColor: Colors.red,  value: "unMarried", groupValue: status, onChanged: (value){
                      setState(() {
                        status=value;
                      });
                    }),
                    ElevatedButton(onPressed: (){
          Navigator.pop(context);
        }, child: Text("Home")),
                    Text("$status",style: TextStyle(fontSize: 20),),
                    Text("$gender",style: TextStyle(fontSize: 20),)
                  ],
                ),
              )
            ],
          ),
        )
    );
  }
}