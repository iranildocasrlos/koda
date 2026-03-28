import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:koda/components/Cronometro.dart';
import 'package:koda/components/EntradaTempo.dart';
import 'package:koda/store/pomodoro.store.dart';
import 'package:provider/provider.dart';

class Pomodoro extends StatelessWidget {
  const Pomodoro({super.key});

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);

    return Scaffold(
      appBar: AppBar(title: Text("Koda Pomodoro"), centerTitle: true),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: Cronometro()),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: Observer(
              builder: (_) => Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  EntradaTempo(
                    valor: store.tempoAtividade,
                    titulo: "Atividade",
                    incrementar: store.incrementarTempoAtividade,
                    decrementar: store.decrementarTempoAtividade,
                  ),
                  EntradaTempo(
                    valor: store.tempoDescanso,
                    titulo: "Descanso",
                    incrementar: store.incrementarTempoDescanso,
                    decrementar: store.decrementarTempoDescanso,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
