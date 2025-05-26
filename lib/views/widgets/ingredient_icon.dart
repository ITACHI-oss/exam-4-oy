import 'package:flutter/material.dart';

class IngredientIcon extends StatelessWidget {
  final IconData icon;

  const IngredientIcon({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.orange.shade50,
        shape: BoxShape.circle,
      ),
      child: Icon(icon, color: Colors.orange, size: 20),
    );
  }
}
