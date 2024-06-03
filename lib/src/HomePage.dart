// import 'package:app_curso/src/post.dart';
import 'package:app_curso/src/widget/Item_product.dart';
import 'package:app_curso/src/widget/mobile_app_bar.dart';
import 'package:app_curso/src/widget/web_app_bar.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // String _prize = "0.0";

  _ajustLayout(double width) {
    int cols = 3;
    if (width <= 600) {
      cols = 2;
    } else if (width <= 960) {
      cols = 4;
    } else {
      cols = 6;
    }

    return cols;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      var width = constraint.maxWidth;
      var heightAppBar = AppBar().preferredSize.height;

      return Scaffold(
        appBar: width < 600
            ? PreferredSize(
                preferredSize: Size(width, heightAppBar),
                child: const MobileAppBar(),
              )
            : PreferredSize(
                preferredSize: Size(width, heightAppBar),
                child: const WebAppBar(),
              ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: GridView.count(
            crossAxisCount: _ajustLayout(width),
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            children: const [
              ItemProduct(
                name: "Kit Multimidia",
                price: "2.500,00",
                image: "p1.jpg",
              ),
              ItemProduct(
                name: "Pneu goodyear aro 16",
                price: "800,00",
                image: "p2.jpg",
              ),
              ItemProduct(
                name: "Samsung 20",
                price: "4.200,00",
                image: "p3.jpg",
              ),
              ItemProduct(
                name: "Samsung",
                price: "800,00",
                image: "p4.jpg",
              ),
              ItemProduct(
                name: "Galaxy 20",
                price: "6.200,00",
                image: "p5.jpg",
              ),
              ItemProduct(
                name: "Iphone 14",
                price: "1.900,00",
                image: "p6.jpg",
              ),
            ],
          ),
        ),
      );
    });
  }
}
