import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:koda/components/CronometroBt.dart';
import 'package:koda/store/pomodoro.store.dart';
import 'package:provider/provider.dart';

class Cronometro extends StatelessWidget {
  const Cronometro({super.key});

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);

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
          Text(
            "${store.minutos.toString().padLeft(2, '0')}:${store.segundos.toString().padLeft(2, '0')}",
            style: TextStyle(fontSize: 120, color: Colors.white),
          ),
          SizedBox(height: 10),
          Observer(
            builder: (_) => Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                if (!store.iniciado)
                  CronometroBt(
                    texto: "Iniciar",
                    icone: Icons.play_arrow,
                    click: store.iniciar,
                  ),
                if (store.iniciado)
                  CronometroBt(
                    texto: "Parar",
                    icone: Icons.stop,
                    click: store.parar,
                  ),
                CronometroBt(
                  texto: "Reiniciar",
                  icone: Icons.refresh,
                  click: store.parar,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
