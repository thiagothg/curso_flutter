import 'package:flutter/material.dart';
import 'dart:math';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _imageApp = const AssetImage("assets/images/padrao.png");
  var _message = "Escolha uma opção abaixo";

  void _play(String action) {
    var options = ["papel", "tesoura", "pedra"];
    var numero = Random().nextInt(3);
    var chooseApp = options[numero];

    _imageApp = AssetImage("assets/images/${options[numero]}.png");

    //validação do ganhador
    if (action == "pedra" && chooseApp == "tesoura" ||
        action == "tesoura" && chooseApp == "papel" ||
        action == "papel" && chooseApp == "pedra") {
      _message = "Você ganhou!";
    } else if (chooseApp == "pedra" && action == "tesoura" ||
        chooseApp == "tesoura" && action == "papel" ||
        chooseApp == "papel" && action == "pedra") {
      _message = "Você perdou !";
    } else {
      _message = "Empate!";
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("JokenPo app"),
        backgroundColor: Colors.green,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 32, bottom: 16),
            child: Text(
              "Escolha do app:",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Image(image: _imageApp),
          Padding(
            padding: const EdgeInsets.only(top: 32, bottom: 16),
            child: Text(
              _message,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () => _play('pedra'),
                child: Image.asset(
                  "assets/images/pedra.png",
                  height: MediaQuery.of(context).size.width * .2,
                ),
              ),
              GestureDetector(
                onTap: () => _play('papel'),
                child: Image.asset(
                  "assets/images/papel.png",
                  height: MediaQuery.of(context).size.width * .2,
                ),
              ),
              GestureDetector(
                onTap: () => _play('tesoura'),
                child: Image.asset(
                  "assets/images/tesoura.png",
                  height: MediaQuery.of(context).size.width * .2,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
