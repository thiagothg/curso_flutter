import 'package:flutter/material.dart';

class ItemProduct extends StatelessWidget {
  final String name;
  final String price;
  final String image;

  const ItemProduct(
      {super.key,
      required this.name,
      required this.price,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey),
        color: Colors.white,
      ),
      height: 200,
      child: Column(
        children: [
          Expanded(
            flex: 8,
            child: Image.asset(
              "assets/images/$image",
              fit: BoxFit.contain,
            ),
          ),
          Expanded(
            flex: 1,
            child: Text(name),
          ),
          Expanded(
            flex: 1,
            child: Text(
              "R\$ $price",
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
