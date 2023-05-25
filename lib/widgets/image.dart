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
          child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9zdHuCkRAfawF33wo27ShmxZP0wmvb8msUFU45f6NK7nuet5M3iFjvyUZj0CgCotVSvw&usqp=CAU',
          fit: BoxFit.cover,),
        )
      ]),
    );
  }
}