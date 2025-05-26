import 'package:exam_4_oy/views/widgets/burger_card.dart';
import 'package:exam_4_oy/views/widgets/button.dart';
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
  String selectedOffer = 'Delivery';
  final bool onlinePaymentAvailable = false;
  String selectedDeliveryTime = '10-15 min';
  String selectedPricing = '\$\$';
  int selectedRating = 4;

  void _showFilterDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (context, setDialogState) {
            return Dialog(
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                height: 700,
                width: double.infinity,
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Filter your search',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        IconButton(
                          icon: Icon(Icons.close),
                          onPressed: () => Navigator.pop(context),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Text(
                      'OFFERS',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey[600],
                      ),
                    ),
                    SizedBox(height: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            _buildOfferChip('Delivery', setDialogState),
                            SizedBox(width: 15),
                            _buildOfferChip('Pick Up', setDialogState),
                            SizedBox(width: 15),
                            _buildOfferChip('Offer', setDialogState),
                          ],
                        ),
                        SizedBox(height: 10),
                        _buildOfferChip(
                          'Online payment available',
                          setDialogState,
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    Text(
                      'DELIVER TIME',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey[600],
                      ),
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        _buildTimeChip('10-15 min', setDialogState),
                        SizedBox(width: 7),
                        _buildTimeChip('20 min', setDialogState),
                        SizedBox(width: 7),
                        _buildTimeChip('30 min', setDialogState),
                      ],
                    ),
                    SizedBox(height: 30),
                    Text(
                      'PRICING',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey[600],
                      ),
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        _buildPriceChip('\$', setDialogState),
                        SizedBox(width: 10),
                        _buildPriceChip('\$\$', setDialogState),
                        SizedBox(width: 10),
                        _buildPriceChip('\$\$\$', setDialogState),
                      ],
                    ),
                    SizedBox(height: 30),
                    Text(
                      'RATING',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey[600],
                      ),
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: List.generate(5, (index) {
                        return GestureDetector(
                          onTap: () {
                            setDialogState(() {
                              selectedRating = index + 1;
                            });
                          },
                          child: Container(
                            height: 50,
                            width: 50,
                            margin: EdgeInsets.only(right: 8),
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.grey.shade300),
                            ),
                            child: Icon(
                              Icons.star,
                              color:
                                  index < selectedRating
                                      ? Colors.orange
                                      : Colors.grey.shade300,
                              size: 24,
                            ),
                          ),
                        );
                      }),
                    ),
                    Spacer(),
                    Button(
                      text: "FILTER",
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }

  Widget _buildOfferChip(String text, StateSetter setDialogState) {
    bool isSelected = selectedOffer == text;
    return GestureDetector(
      onTap: () {
        setDialogState(() {
          selectedOffer = text;
        });
      },
      child: Container(
        height: 50,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 13),
        decoration: BoxDecoration(
          color: isSelected ? Colors.orange : Colors.white,
          borderRadius: BorderRadius.circular(25),
          border: Border.all(
            color: isSelected ? Colors.orange : Colors.grey.shade300,
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.black,
            fontSize: 16,
          ),
        ),
      ),
    );
  }

  Widget _buildTimeChip(String text, StateSetter setDialogState) {
    bool isSelected = selectedDeliveryTime == text;
    return GestureDetector(
      onTap: () {
        setDialogState(() {
          selectedDeliveryTime = text;
        });
      },
      child: Container(
        height: 50,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 13),
        decoration: BoxDecoration(
          color: isSelected ? Colors.orange : Colors.white,
          borderRadius: BorderRadius.circular(25),
          border: Border.all(
            color: isSelected ? Colors.orange : Colors.grey.shade300,
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.black,
            fontSize: 16,
          ),
        ),
      ),
    );
  }

  Widget _buildPriceChip(String text, StateSetter setDialogState) {
    bool isSelected = selectedPricing == text;
    return GestureDetector(
      onTap: () {
        setDialogState(() {
          selectedPricing = text;
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 13),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isSelected ? Colors.orange : Colors.white,
          border: Border.all(
            color: isSelected ? Colors.orange : Colors.grey.shade300,
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.black,
            fontSize: 18,
          ),
        ),
      ),
    );
  }

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
              onPressed: _showFilterDialog,
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
