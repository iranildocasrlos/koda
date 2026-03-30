import 'package:flutter/material.dart';
import 'package:koda/store/pomodoro.store.dart';
import 'package:provider/provider.dart';

class EntradaTempo extends StatelessWidget {
  final int valor;
  final String titulo;
  final void Function()? incrementar;
  final void Function()? decrementar;

  const EntradaTempo({
    super.key,
    required this.valor,
    required this.titulo,
    this.incrementar,
    this.decrementar,
  });

  @override
  Widget build(BuildContext context) {
    //final store = Provider.of<PomodoroStore>(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          titulo,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: this.decrementar,
              child: Icon(Icons.arrow_downward, color: Colors.white),
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                padding: EdgeInsets.all(15),
                backgroundColor: Colors.red,
                elevation: 8,
              ),
            ),
            Text("${this.valor} min"),
            ElevatedButton(
              onPressed: this.incrementar,
              child: Icon(Icons.arrow_upward, color: Colors.white),
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                padding: EdgeInsets.all(15),
                backgroundColor: Colors.green,
                elevation: 8,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
