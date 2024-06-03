import 'package:flutter/material.dart';

class OrientationPage extends StatefulWidget {
  const OrientationPage({super.key});

  @override
  State<OrientationPage> createState() => _OrientationPageState();
}

class _OrientationPageState extends State<OrientationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Orientation"),
        ),
        body: OrientationBuilder(
          builder: (context, orientation) {
            // return Container(
            //   child: orientation == Orientation.portrait
            //       ? Text("portraint")
            //       : Text("landspace"),
            // );

            return GridView.count(
              crossAxisCount: orientation == Orientation.portrait ? 2 : 4,
              children: [
                Container(
                  color: Colors.red,
                ),
                Container(
                  color: Colors.green,
                ),
                Container(
                  color: Colors.orange,
                ),
                Container(
                  color: Colors.blue,
                ),
                Container(
                  color: Colors.purple,
                ),
                Container(
                  color: Colors.yellow,
                ),
                Container(
                  color: Colors.greenAccent,
                ),
              ],
            );
          },
        ));
  }
}
