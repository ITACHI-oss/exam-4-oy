import 'package:exam_4_oy/views/widgets/button.dart';
import 'package:flutter/material.dart';

class ProductActionWidget extends StatefulWidget {
  const ProductActionWidget({super.key});

  @override
  State<ProductActionWidget> createState() => _ProductActionWidgetState();
}

class _ProductActionWidgetState extends State<ProductActionWidget> {
  int quantity = 1;
  double price = 32;

  void _increment() {
    setState(() {
      quantity++;
    });
  }

  void _decrement() {
    if (quantity > 1) {
      setState(() {
        quantity--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(22),
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '\$${price.toStringAsFixed(0)}',
                  style: TextStyle(fontSize: 30),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.black87,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: _decrement,
                        icon: Icon(Icons.remove, color: Colors.white),
                        iconSize: 20,
                        constraints: BoxConstraints(),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Text(
                          '$quantity',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                      IconButton(
                        onPressed: _increment,
                        icon: Icon(Icons.add, color: Colors.white),
                        iconSize: 20,
                        padding: EdgeInsets.zero,
                        constraints: BoxConstraints(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 25),
            Button(text: "ADD TO CART", onTap: () {}),
          ],
        ),
      ),
    );
  }
}
