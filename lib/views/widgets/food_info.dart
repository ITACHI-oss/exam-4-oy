import 'package:flutter/material.dart';

class FoodInfo extends StatelessWidget {
  final String text;
  final String labeltext;
  const FoodInfo({super.key, required this.text, required this.labeltext});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 8),
        Text(
          labeltext,
          style: TextStyle(fontSize: 14, color: Colors.grey, height: 1.4),
        ),
      ],
    );
  }
}
