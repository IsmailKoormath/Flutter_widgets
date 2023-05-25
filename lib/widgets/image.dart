import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        Container(
          height: 300,
          width: 300,
          color: Colors.cyan,
          child: Image.asset('images/car.jpg',
          fit: BoxFit.cover,),
        ),
        Container(
          height: 300,
          width: 300,
          color: Colors.cyan,
          child: Image.network('images/car.jpg',
          fit: BoxFit.cover,),
        )
      ]),
    );
  }
}