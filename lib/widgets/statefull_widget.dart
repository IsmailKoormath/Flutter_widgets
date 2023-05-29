import 'package:flutter/material.dart';

class FullWidget extends StatefulWidget {
  const FullWidget({super.key});

  @override
  State<FullWidget> createState() => _FullWidgetState();
}

class _FullWidgetState extends State<FullWidget> {
  var displayText = "good morning";
  var LikeIconColor =Colors.black;
  var UnlikeIconColor =Colors.black;


  void changeText(){
  
  setState(() {
      if(displayText == "good morning"){
      displayText = "good night";
    }else{
      displayText = "good morning";
    }
    });
  }
  void LIkeIconColor(){
setState(() {
  if(LikeIconColor== Colors.black){
  LikeIconColor=Colors.blue;
  }else{
     LikeIconColor=Colors.black;
  }

});
}
  void unlikeIconColor(){
setState(() {
  if(UnlikeIconColor== Colors.black){
  UnlikeIconColor=Colors.red;
  }else{
     UnlikeIconColor=Colors.black;
  }
});
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     // drawer: Column(children: [],),
      //floatingActionButton: FloatingActionButton(onPressed: (){},child: Icon(Icons.add,color: Colors.white,),),
   // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
     appBar: AppBar(
          title: Text("Instagram"),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 204, 10, 126),
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
        body:Center(child: Column
        ( mainAxisAlignment:MainAxisAlignment.center,
          children: [
          Text(displayText,style: TextStyle(fontSize: 20),),
          ElevatedButton(onPressed: (){
            changeText();
          }, child: Text("change Text")),
         Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(onPressed: (){
LIkeIconColor();
            }, icon: Icon(Icons.thumb_up),color:LikeIconColor),
            IconButton(onPressed: (){
unlikeIconColor();
            }, icon: Icon(Icons.thumb_down),color: UnlikeIconColor),
          ],
         )
        ]),)
    );
  }
}