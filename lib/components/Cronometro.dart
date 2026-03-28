import 'package:flutter/material.dart';
import 'package:koda/components/CronometroBt.dart';

class Cronometro extends StatelessWidget {
  const Cronometro({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Iniciar Atividade",
            style: TextStyle(fontSize: 40, color: Colors.white),
          ),
          SizedBox(height: 5),
          Text("25:00", style: TextStyle(fontSize: 120, color: Colors.white)),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CronometroBt(texto: "Iniciar", icone: Icons.play_arrow),
              CronometroBt(texto: "Parar", icone: Icons.stop),
              CronometroBt(texto: "Reiniciar", icone: Icons.refresh),
            ],
          ),
        ],
      ),
    );
  }
}
