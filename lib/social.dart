import 'package:flutter/material.dart';

class SocialWidget extends StatelessWidget {
  const SocialWidget({super.key});

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
        drawer: Drawer(
          backgroundColor: Colors.pink,
          child: ListView(
            children: const [
              UserAccountsDrawerHeader(accountName: Text("Ismail"), accountEmail: Text("ismail@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage:AssetImage('images/avatar.png') ,
                  backgroundColor: Colors.white,
                ),),
           ListTile(
            leading: Icon(Icons.person),
            iconColor: Colors.white,
            title: Text("Profile",style: TextStyle(fontSize: 16),),
            textColor: Colors.white,
           ),
           ListTile(
            leading: Icon(Icons.dashboard),
            iconColor: Colors.white,
            title: Text("Dashboard",style: TextStyle(fontSize: 16),),
            textColor: Colors.white,
           ),
           ListTile(
            leading: Icon(Icons.settings),
            iconColor: Colors.white,
            title: Text("Settings",style: TextStyle(fontSize: 16),),
            textColor: Colors.white,
           ),
           ListTile(
            leading: Icon(Icons.logout),
            iconColor: Colors.white,
            title: Text("Signout",style: TextStyle(fontSize: 16),),
            textColor: Colors.white,
           ),
            ],
          ),
        ),
        body:
        
         ListView( children: [
          // ListView(scrollDirection: Axis.horizontal),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children:const [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CircleAvatar(radius: 39,backgroundColor: Color.fromARGB(255, 200, 28, 85),
                    child:CircleAvatar(backgroundImage: AssetImage("images/avatar.png"),radius: 35,)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CircleAvatar(radius: 39,backgroundColor: Color.fromARGB(255, 200, 28, 85),
                    child:CircleAvatar(backgroundImage: AssetImage("images/avatar2.png"),radius: 35,)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CircleAvatar(radius: 39,backgroundColor: Color.fromARGB(255, 200, 28, 85),
                    child:CircleAvatar(backgroundImage: AssetImage("images/avatar.png"),radius: 35,)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CircleAvatar(radius: 39,backgroundColor: Color.fromARGB(255, 200, 28, 85),
                    child:CircleAvatar(backgroundImage: AssetImage("images/avatar2.png"),radius: 35,)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CircleAvatar(radius: 39,backgroundColor: Color.fromARGB(255, 200, 28, 85),
                    child:CircleAvatar(backgroundImage: AssetImage("images/avatar.png"),radius: 35,)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CircleAvatar(radius: 39,backgroundColor: Color.fromARGB(255, 200, 28, 85),
                    child:CircleAvatar(backgroundImage: AssetImage("images/avatar.png"),radius: 35,)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CircleAvatar(radius: 39,backgroundColor: Color.fromARGB(255, 200, 28, 85),
                    child:CircleAvatar(backgroundImage: AssetImage("images/avatar.png"),radius: 35,)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CircleAvatar(radius: 39,backgroundColor: Color.fromARGB(255, 200, 28, 85),
                    child:CircleAvatar(backgroundImage: AssetImage("images/avatar.png"),radius: 35,)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CircleAvatar(radius: 39,backgroundColor: Color.fromARGB(255, 200, 28, 85),
                    child:CircleAvatar(backgroundImage: AssetImage("images/avatar.png"),radius: 35,)),
                  ),                                 
                ],               
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(14.0),
           
            child: Card(
              elevation: 10,
              child: Column(
                children: [
                  ListTile(
                    title: Text("tony") ,
                    subtitle: Text("13 minutes ago"),
                    leading: CircleAvatar(backgroundImage: AssetImage("images/avatar.png"),),
                    trailing: Icon(Icons.more_vert),
                  ),
                  ListTile(
                    title: Text("super car ..."),
                  ),
                  Image.asset("images/car.jpg"),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                   IconButton(onPressed: (){}, icon:Icon(Icons.favorite_border) ),

                   IconButton(onPressed: (){}, icon:Icon(Icons.comment) ),],
                   
                   
                  )
                ],
                            
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Card(
              elevation: 10,
              child: Column(
                children: [
                  ListTile(
                    title: Text("stark") ,
                    subtitle: Text("15 minutes ago"),
                    leading: CircleAvatar(backgroundImage: AssetImage("images/avatar2.png"),),
                    trailing: Icon(Icons.more_vert),
                  ),
                  ListTile(
                    title: Text("super car ..."),
                  ),
                  Image.asset("images/car2.jpg"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                   children: [IconButton(onPressed: (){}, icon:Icon(Icons.thumb_up) ),
                   IconButton(onPressed: (){}, icon:Icon(Icons.thumb_down) ),
                   ],
                  )
                ],
               
          
               
              ),
            ),
          )
               ]),
    );
  }
}