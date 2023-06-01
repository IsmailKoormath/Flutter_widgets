import 'package:flutter/material.dart';

class AddDonator extends StatefulWidget {
  const AddDonator({super.key});

  @override
  State<AddDonator> createState() => _AddDonatorState();
}

class _AddDonatorState extends State<AddDonator> {
final bloodgroups = ['A+','A-','B+','B-','O+','O-','AB+','AB-'];
String? selectedGroup;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Donator"),
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                border: OutlineInputBorder(),label: Text("Name"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                keyboardType: TextInputType.number,
                maxLength: 10,
                decoration: InputDecoration(
                border: OutlineInputBorder(),label: Text("Phone Number"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: DropdownButtonFormField(decoration: InputDecoration(label: Text("Select blood group")), items: bloodgroups.map((e) => DropdownMenuItem(
                
                child: Text(e),value: e,)).toList(), onChanged: (val){
                selectedGroup = val;
              }),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed: (){}, child: Text("Submit"),style: ButtonStyle(minimumSize: MaterialStateProperty.all(Size(double.infinity, 50)),
              backgroundColor: MaterialStateProperty.all(Colors.orange)),),
            )
          ]),
      ),
    );
  }
}