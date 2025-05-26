import 'package:exam_4_oy/views/screens/restaurant_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RestaurantView(),
      debugShowCheckedModeBanner: false,
    );
  }
}
