import 'package:flutter/material.dart';

class WebAppBar extends StatelessWidget {
  const WebAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            "assets/images/logo.png",
            fit: BoxFit.contain,
          ),
          Expanded(child: Container()),
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_bag_rounded)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
          SizedBox(
            width: 10,
          ),
          OutlinedButton(onPressed: () {}, child: Text("Cadastrar")),
          SizedBox(
            width: 10,
          ),
          OutlinedButton(
            onPressed: () {},
            child: Text("Entrar"),
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.amber,
            ),
          )
        ],
      ),
      actions: [],
    );
  }
}
