import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class AddDonator extends StatefulWidget {
  const AddDonator({super.key});

  @override
  State<AddDonator> createState() => _AddDonatorState();
}

class _AddDonatorState extends State<AddDonator> {
final bloodgroups = ['A+','A-','B+','B-','O+','O-','AB+','AB-'];
String? selectedGroup;
  final CollectionReference donor = FirebaseFirestore.instance.collection('donor');

  TextEditingController donorName = TextEditingController();
  TextEditingController donorPhone = TextEditingController();

void addDonor(){
  final data = {
    'name':donorName.text,'phone':donorPhone.text,'group': selectedGroup};
  donor.add(data);
}

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
                controller: donorName,
                decoration: InputDecoration(
                border: OutlineInputBorder(),label: Text("Name"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: donorPhone,
                keyboardType: TextInputType.number,
                maxLength: 10,
                decoration: InputDecoration(
                border: OutlineInputBorder(),label: Text("Phone Number"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: DropdownButtonFormField(
                decoration: InputDecoration(
                  label: Text("Select blood group")),
                   items: bloodgroups.map((e) => DropdownMenuItem(
                
                child: Text(e),
                value: e,
                )).toList(),
                 onChanged: (val){
                selectedGroup = val;
              }),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed: (){
                addDonor();
                Navigator.pop(context);
              }, child: Text("Submit"),style: ButtonStyle(minimumSize: MaterialStateProperty.all(Size(double.infinity, 50)),
              backgroundColor: MaterialStateProperty.all(Colors.orange)),),
            )
          ]),
      ),
    );
  }
}