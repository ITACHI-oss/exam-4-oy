import 'package:exam_4_oy/views/widgets/button.dart';
import 'package:exam_4_oy/views/widgets/food_info.dart';
import 'package:exam_4_oy/views/widgets/info_row.dart';
import 'package:exam_4_oy/views/widgets/ingredient_selection.dart';
import 'package:exam_4_oy/views/widgets/restaurant_info.dart';
import 'package:exam_4_oy/views/widgets/size_selection.dart';
import 'package:flutter/material.dart';

class FoodDetailsScreen extends StatefulWidget {
  const FoodDetailsScreen({super.key});

  @override
  State<FoodDetailsScreen> createState() => FoodDetailsScreenState();
}

class FoodDetailsScreenState extends State<FoodDetailsScreen> {
  int quantity = 2;
  String selectedSize = "14\"";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back_ios, size: 18),
                      ),
                    ),
                    SizedBox(width: 20),
                    Text(
                      "Details",
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Stack(
                  children: [
                    Container(
                      height: 200,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    Positioned(
                      right: 20,
                      bottom: 20,
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade400,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.favorite_border,
                          size: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                RestaurantInfo(),
                SizedBox(height: 20),
                FoodInfo(),
                SizedBox(height: 20),
                InfoRow(),
                SizedBox(height: 25),
                SizeSelection(
                  selectedSize: selectedSize,
                  onSizeChanged: (size) {
                    setState(() {
                      selectedSize = size;
                    });
                  },
                ),
                SizedBox(height: 20),
                IngredientsSection(),
                SizedBox(height: 30),
                Button(text: "ADD TO CART", onTap: () {}),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
