import 'package:flutter/material.dart';
import 'package:koda/components/Cronometro.dart';
import 'package:koda/components/EntradaTempo.dart';

class Pomodoro extends StatelessWidget {
  const Pomodoro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Pomodoro"), centerTitle: true),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: Cronometro()),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                EntradaTempo(valor: 25, titulo: "Tarefa"),
                EntradaTempo(valor: 5, titulo: "Descanso"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
