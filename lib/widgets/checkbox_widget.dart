import 'package:flutter/material.dart';

class CheckWidget extends StatefulWidget {
  const CheckWidget({super.key});

  @override
  State<CheckWidget> createState() => _CheckWidgetState();
}

class _CheckWidgetState extends State<CheckWidget> {

  bool ? isChecked = false;
  bool ? isChecked1 = false;
  bool ? isChecked2 = false;
  bool ? isChecked3 = false;

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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Checkbox(value: isChecked, onChanged: (val){
              setState(() {
                isChecked = val ;
              });
              }),
              Checkbox(

                // store the values in tristate true,fale and null
                tristate: true,

                activeColor: Colors.red,
                checkColor: const Color.fromARGB(255, 15, 121, 19),
                value: isChecked1, onChanged: (val){
                setState(() {
                  isChecked1 = val ;
                });
              }),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CheckboxListTile(
                  title: Text("Send Notification",style: TextStyle(color: Colors.white),),subtitle: Text("turn on or off Notification"),tileColor: Colors.green,  value: isChecked2, onChanged: (val){
                  setState(() {
                    isChecked2=val;
                  });
                }),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                  title: Text("Send Notification",style: TextStyle(color: Colors.white),),subtitle: Text("turn on or off Notification"),tileColor: Colors.green,  value: isChecked3, onChanged: (val){
                  setState(() {
                    isChecked3=val;
                  });
                }),
              ),
            ],
          ),
        )
    );
  }
}