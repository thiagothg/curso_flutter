import 'package:flutter/material.dart';

class ResponsiveWrap extends StatefulWidget {
  const ResponsiveWrap({super.key});

  @override
  State<ResponsiveWrap> createState() => _ResponsiveWrapState();
}

class _ResponsiveWrapState extends State<ResponsiveWrap> {
  var largura = 200.0;
  var altura = 100.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Wrap"),
      ),
      body: Container(
        color: Colors.black12,
        width: MediaQuery.of(context).size.width,
        child: Wrap(
          alignment: WrapAlignment.spaceEvenly,
          runSpacing: 10,
          spacing: 10,
          children: [
            Container(
              width: largura,
              height: altura,
              color: Colors.orange,
            ),
            Container(
              width: largura,
              height: altura,
              color: Colors.pink,
            ),
            Container(
              width: largura,
              height: altura,
              color: Colors.blueAccent,
            ),
            Container(
              width: largura,
              height: altura,
              color: Colors.yellow,
            ),
          ],
        ),
      ),
    );
  }
}
