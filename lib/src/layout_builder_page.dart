import 'package:flutter/material.dart';

class LayoutBuilderPage extends StatefulWidget {
  const LayoutBuilderPage({super.key});

  @override
  State<LayoutBuilderPage> createState() => _LayoutBuilderPageState();
}

class _LayoutBuilderPageState extends State<LayoutBuilderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Layout builder"),
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: LayoutBuilder(builder: (context, constraint) {
          var largura = constraint.maxWidth;
          if (largura < 600) {
            return const Text("Celulares");
          } else if (largura < 960) {
            return const Text("Celulares & tablets");
          } else {
            return const Text("pc");
          }
        }),
      ),
    );
  }
}
