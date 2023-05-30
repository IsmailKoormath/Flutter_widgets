import 'package:first_app/widgets/text.dart';
import 'package:flutter/material.dart';

class BottomNavigationWidget extends StatefulWidget {
  const BottomNavigationWidget({super.key});

  @override
  State<BottomNavigationWidget> createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  int indexNum =0;
  List tabWidgets = [
    Text("Home",style: TextStyle(fontSize: 40),),
    Text("Profile",style: TextStyle(fontSize: 40),),
    Text("Dashboard",style: TextStyle(fontSize: 40),),
    Text("settings",style: TextStyle(fontSize: 40),),
  ];


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 10,
      child: Scaffold (
          appBar: AppBar(
            bottom: TabBar(tabs: const[
              Tab(text:"CHATS"),
              Tab(text:"STATUS"),
              Tab(text:"CALLS"),
              Tab(icon: Icon(Icons.home),),
              Tab(icon: Icon(Icons.person),),
              Tab(text:"CHATS"),
              Tab(text:"STATUS"),
              Tab(text:"CALLS"),
              Tab(icon: Icon(Icons.home),),
              Tab(icon: Icon(Icons.person),),
              // Tab(icon: Icon(Icons.home),)
            ],
            indicatorColor: Colors.orange,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorWeight: 5,
            indicator: BoxDecoration(borderRadius: BorderRadius.circular(20),
            color:Color.fromARGB(255, 39, 161, 227), ),
            isScrollable: true,
            
            ),
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
          bottomNavigationBar: BottomNavigationBar(
            items: const[
               BottomNavigationBarItem(icon: Icon(Icons.home),label:"Home",backgroundColor: Colors.blue ),
               BottomNavigationBarItem(icon: Icon(Icons.person),label:"Profile",backgroundColor: Colors.red  ),
               BottomNavigationBarItem(icon: Icon(Icons.dashboard),label:"Dashboard",backgroundColor: Colors.green  ),
               BottomNavigationBarItem(icon: Icon(Icons.settings),label:"Settings",backgroundColor: Colors.green  ),
    
          ],
          iconSize: 30,
          // selectedFontSize:20,
          showSelectedLabels: true,
          // showUnselectedLabels: true,
          currentIndex: indexNum,
          onTap: (int index){
            setState(() {
              indexNum=index;
            });
          }, ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
           floatingActionButton: FloatingActionButton(onPressed: (){},backgroundColor: Colors.orange ,foregroundColor: Colors.white, child:Icon(Icons.share)),
          //  floatingActionButton: FloatingActionButton.extended(onPressed: (){}, label: Text("share"),icon: Icon(Icons.share),),
        body: 
  //       Center(
  // child: Column(
    // mainAxisAlignment: MainAxisAlignment.center,
  //   children: [
      // tabWidgets.elementAt(indexNum),
      TabBarView(
        children: const[
          Center(child: Text("Chat page")),
          Center(child: Text("Status page")),
          Center(child: Text("Call page")),
          Center(child: Text("Status page")),
          Center(child: Text("Call page")),
          Center(child: Text("Chat page")),
          Center(child: Text("Status page")),
          Center(child: Text("Call page")),
          Center(child: Text("Status page")),
          Center(child: Text("Call page")),
        ],

      ),
//     ],
//   ),
// )
)
);       
  }
}