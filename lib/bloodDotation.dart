import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class BloodDonation extends StatefulWidget {
  const BloodDonation({super.key});

  @override
  State<BloodDonation> createState() => _BloodDonationState();
}

class _BloodDonationState extends State<BloodDonation> {
  final CollectionReference donor = FirebaseFirestore.instance.collection('donor');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Blood Dotation App"),
        backgroundColor: Colors.orange,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(onPressed: (){
Navigator.pushNamed(context, "/add");
      },child: Icon(Icons.add),),
   
        body: StreamBuilder(
          stream: donor.snapshots(),
           builder: (context,AsyncSnapshot snapshot){
if(snapshot.hasData){
  return ListView.builder(
    itemCount: snapshot.data?.docs.length,
     itemBuilder: (context,index){
final DocumentSnapshot donorSnap = snapshot.data.docs[index];
return Text(donorSnap['name']);
  });
}
return Container();
           } ),
      );
  
  }
}