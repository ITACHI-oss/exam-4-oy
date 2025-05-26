import 'package:flutter/material.dart';

class InfoRow extends StatelessWidget {
  const InfoRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            Icon(Icons.star_border, color: Colors.orange, size: 25),
            SizedBox(width: 4),
            Text(
              "4.7",
              style: TextStyle(
                fontSize: 14,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        SizedBox(width: 25),
        Row(
          children: [
            Icon(Icons.delivery_dining, color: Colors.orange, size: 22),
            SizedBox(width: 7),
            Text(
              "Free",
              style: TextStyle(
                fontSize: 14,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        SizedBox(width: 25),
        Row(
          children: [
            Icon(Icons.access_time, color: Colors.orange, size: 22),
            SizedBox(width: 5),
            Text(
              "20 min",
              style: TextStyle(
                fontSize: 14,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
