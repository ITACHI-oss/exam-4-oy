import 'package:exam_4_oy/views/widgets/button.dart';
import 'package:flutter/material.dart';

class LocationPermissionScreen extends StatelessWidget {
  const LocationPermissionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          children: [
            SizedBox(height: 200),
            Container(
              width: 200,
              height: 250,
              decoration: BoxDecoration(
                color: Colors.grey.shade400,
                borderRadius: BorderRadius.circular(90),
              ),
            ),
            SizedBox(height: 120),
            Button(text: "ACCESS LOCATION", onTap: () {}),
            SizedBox(height: 16),
            Text(
              "DFOOD WILL ACCESS YOUR LOCATION\nONLY WHILE USING THE APP",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 13,
                letterSpacing: 0.5,
              ),
            ),
            SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
