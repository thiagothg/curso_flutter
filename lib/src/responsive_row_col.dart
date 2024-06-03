import 'package:flutter/material.dart';

class ResponsiveRowCol extends StatefulWidget {
  const ResponsiveRowCol({super.key});

  @override
  State<ResponsiveRowCol> createState() => _ResponsiveRowColState();
}

class _ResponsiveRowColState extends State<ResponsiveRowCol> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Resposividade'),
      ),
      body: Column(
        children: [
          // Container(
          //   color: Colors.red,
          //   height: 200,
          // ),
          Expanded(
            child: Container(
              color: Colors.red,
              // height: 200,
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.orange,
              // height: 200,
            ),
          ),
          Expanded(
              flex: 3,
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      color: Colors.black,
                      // height: 200,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      color: Colors.cyan,
                      // height: 200,
                    ),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
