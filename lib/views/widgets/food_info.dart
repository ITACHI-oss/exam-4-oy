import 'package:flutter/material.dart';

class FoodInfo extends StatelessWidget {
  const FoodInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Pizza Calzone European",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 8),
        Text(
          "Prosciutto e funghi is a pizza variety that is topped with tomato sauce.",
          style: TextStyle(fontSize: 14, color: Colors.grey, height: 1.4),
        ),
      ],
    );
  }
}
