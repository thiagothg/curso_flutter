import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _prize = "0.0";

  _updatePrice() async {
    var url = "https://blockchain.info/ticker";
    final dio = Dio();
    final response = await dio.get(url);

    // print(response.data['BRL']['buy']);
    _prize = response.data['BRL']['buy'].toString();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bitcoin price"),
      ),
      body: Container(
        padding: const EdgeInsets.all(32),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset("assets/images/logo.png"),
              Padding(
                padding: const EdgeInsets.only(bottom: 32, top: 30),
                child: Text(
                  'R\$ $_prize',
                  style: const TextStyle(fontSize: 35),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              FilledButton(
                onPressed: () => _updatePrice(),
                child: const Text('Atualizar'),
                // style: const ButtonStyle(backgroundColor: Colors.orange),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
