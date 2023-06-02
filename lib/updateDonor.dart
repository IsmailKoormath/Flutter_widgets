import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class UpdateDonor extends StatefulWidget {
  const UpdateDonor({super.key});

  @override
  State<UpdateDonor> createState() => _UpdateDonorState();
}

class _UpdateDonorState extends State<UpdateDonor> {
final bloodgroups = ['A+','A-','B+','B-','O+','O-','AB+','AB-'];
String? selectedGroup;
  final CollectionReference donor = FirebaseFirestore.instance.collection('donor');

  TextEditingController donorName = TextEditingController();
  TextEditingController donorPhone = TextEditingController();

void updateDonor(docId){
  final data ={
    'name':donorName.text,
    'phone':donorPhone.text,
    'group':selectedGroup
  };
  donor.doc(docId).update(data).then((value) => Navigator.pop(context));
}

  @override
  Widget build(BuildContext context) {

    final args = ModalRoute.of(context)!.settings.arguments as Map;
    donorName.text = args['name'];
    donorPhone.text = args['phone'];
    selectedGroup = args['group'];
    final docid = args['id'];

    return Scaffold(
      appBar: AppBar(
        title: Text("Update Donator"),
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
              child: DropdownButtonFormField(value: selectedGroup,decoration: InputDecoration(label: Text("Select blood group")), items: bloodgroups.map((e) => DropdownMenuItem(
               
                child: Text(e),value: e,)).toList(), onChanged: (val){
                selectedGroup = val;
              }),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed: (){
             updateDonor(docid);
             
              }, child: Text("Update"),style: ButtonStyle(minimumSize: MaterialStateProperty.all(Size(double.infinity, 50)),
              backgroundColor: MaterialStateProperty.all(Colors.orange)),),
            )
          ]),
      ),
    );
  }
}