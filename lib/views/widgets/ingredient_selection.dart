import 'package:exam_4_oy/views/widgets/ingredient_icon.dart';
import 'package:flutter/material.dart';

class IngredientsSection extends StatelessWidget {
  const IngredientsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "INGREDIENTS",
          style: TextStyle(fontSize: 16, color: Colors.black),
        ),

        SizedBox(height: 15),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IngredientIcon(icon: Icons.local_pizza),
            IngredientIcon(icon: Icons.restaurant),
            IngredientIcon(icon: Icons.smoke_free),
            IngredientIcon(icon: Icons.eco),
            IngredientIcon(icon: Icons.free_breakfast),
          ],
        ),
      ],
    );
  }
}
