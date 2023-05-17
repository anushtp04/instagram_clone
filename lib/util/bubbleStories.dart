import 'package:flutter/material.dart';

class BubbleStories extends StatelessWidget {
  String image;
  String name;

  BubbleStories({required this.name, required this.image});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 35,
          backgroundImage: AssetImage("assets/people/background.jpg"),
          child: CircleAvatar(
            radius: 32,
            backgroundImage: AssetImage(image),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(name)
      ],
    );
  }
}
