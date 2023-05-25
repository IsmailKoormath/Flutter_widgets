import 'package:flutter/material.dart';

class CircleAvatarWidget extends StatelessWidget {
  const CircleAvatarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            radius: 70,
            backgroundColor: Colors.red,
  
              child: CircleAvatar(
                radius: 60,
                child: Text("Login",style: TextStyle(fontSize: 18),),
                
              ),
            ),
        ),
  
    
     Padding(
      padding: const EdgeInsets.all(10.0),
  child: CircleAvatar(
    radius: 60,
    child: Icon(Icons.verified_user,
    size: 40,),
    
  ),

             ),
     Padding(
      padding: EdgeInsets.all(10.0),
  child: CircleAvatar(
    radius: 60,
    backgroundImage: AssetImage('images/avatar.png'),),
    
  ),

             
        ],);
  }
}