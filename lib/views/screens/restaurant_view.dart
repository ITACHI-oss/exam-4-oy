import 'package:exam_4_oy/views/widgets/burger_card.dart';
import 'package:exam_4_oy/views/widgets/food_info.dart';
import 'package:exam_4_oy/views/widgets/info_row.dart';
import 'package:flutter/material.dart';

class RestaurantView extends StatefulWidget {
  const RestaurantView({super.key});

  @override
  State<RestaurantView> createState() => _RestaurantViewState();
}

class _RestaurantViewState extends State<RestaurantView> {
  final List<String> categories = ['Burger', 'Sandwich', 'Pizza', 'Hot Dog'];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Restaurant View',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [
          Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              shape: BoxShape.circle,
            ),
            child: IconButton(
              icon: Icon(Icons.more_horiz, color: Colors.black),
              onPressed: () {},
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 180,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            SizedBox(height: 20),
            FoodInfo(
              text: "Spicy Restaourant",
              labeltext:
                  "Maecenas sed diam eget risus varius blandit sit amet non magna. Integer posuere erat a ante venenatis dapibus posuere velit aliquet.",
            ),
            SizedBox(height: 20),
            InfoRow(),
            SizedBox(height: 20),
            SizedBox(
              height: 40,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  final isSelected = index == selectedIndex;
                  return Padding(
                    padding: EdgeInsets.only(right: 12),
                    child: ChoiceChip(
                      label: Text(categories[index]),
                      selected: isSelected,
                      onSelected: (_) {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      selectedColor: Colors.orange,
                      backgroundColor: Colors.white,
                      labelStyle: TextStyle(
                        color: isSelected ? Colors.white : Colors.black,
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 25),
            Text(
              '${categories[selectedIndex]} (10)',
              style: TextStyle(fontSize: 20),
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 15,
                mainAxisSpacing: 20,
                childAspectRatio: 0.75,
                children: [
                  BurgerCard(
                    title: "Burger Ferguson",
                    restaurant: "Rose Garden",
                    price: "\$40",
                  ),
                  BurgerCard(
                    title: "Rockin' Burgers",
                    restaurant: "Cafenia Restaurant",
                    price: "\$60",
                  ),
                  BurgerCard(
                    title: "Buffalo Burgers",
                    restaurant: "Kaji Firm Kitchen",
                    price: "\$75",
                  ),
                  BurgerCard(
                    title: "Bullseye Burgers",
                    restaurant: "Kebab Restaurant",
                    price: "\$94",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
