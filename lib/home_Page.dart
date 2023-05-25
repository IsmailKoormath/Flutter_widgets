import 'package:first_app/widgets/button_widget.dart';
import 'package:first_app/widgets/cart.dart';
import 'package:first_app/widgets/circle_avatar.dart';
import 'package:first_app/widgets/image.dart';
import 'package:first_app/widgets/text_field.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
 
   HomePage({super.key,});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     // drawer: Column(children: [],),
      //floatingActionButton: FloatingActionButton(onPressed: (){},child: Icon(Icons.add,color: Colors.white,),),
   // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
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
        body: SingleChildScrollView(
          child: Column(
        
            children:   [
            CircleAvatarWidget(),
            TextfieldWidget(text: 'name',),
            SizedBox(height: 20,),
            ButtonWidget(text2:"Text button",),
            ImageWidget(),
            CardWidget(),
           

        
            
          ],),
        ),
    );
  }
}