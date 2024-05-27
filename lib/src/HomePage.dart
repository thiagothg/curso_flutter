import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _controllerAlcool = TextEditingController();
  final TextEditingController _controllerGasolina = TextEditingController();
  String _result = "";

  void _calcular() {
    var alcool = double.tryParse(_controllerAlcool.text);
    var gasolina = double.tryParse(_controllerGasolina.text);

    if (alcool == null || gasolina == null) {
      _result = "Número inválido, digite números mariores que 0 e com ponto";
    } else {
      /**
       * Se o preço do álcool divido pelo preço da gasolina
       * for >= 0.7 é melhor abastecer com gasolina
       * senão é melhor utilizar álcool
       */

      _result = ((alcool / gasolina) >= 0.7)
          ? "Melhor abastecer com gasolina"
          : "Melhor abastecer com álcool";
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Álcool ou gasolina app"),
      ),
      body: Container(
        padding: const EdgeInsets.all(32),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 32),
                child: Image.asset("assets/images/logo.png"),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Text(
                  "Saiba qual a melhor opção para abastecimento do seu veículo",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: "Preço alcool, ex: 1.59",
                ),
                style: const TextStyle(
                  fontSize: 22,
                ),
                controller: _controllerAlcool,
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: "Preço gasolina, ex: 3.59",
                ),
                style: const TextStyle(
                  fontSize: 22,
                ),
                controller: _controllerGasolina,
              ),
              const SizedBox(
                height: 20,
              ),
              FilledButton(
                onPressed: () => _calcular(),
                child: const Text('Calcular'),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                ),
                child: Text(
                  _result,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
