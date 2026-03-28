import 'package:flutter/material.dart';

class EntradaTempo extends StatelessWidget {
  final int valor;
  final String titulo;

  const EntradaTempo({super.key, required this.valor, required this.titulo});

  @override
  Widget build(BuildContext context) {
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
              onPressed: () {},
              child: Icon(Icons.arrow_downward, color: Colors.white),
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                padding: EdgeInsets.all(15),
                backgroundColor: Colors.red,
              ),
            ),
            Text("${this.valor} min"),
            ElevatedButton(
              onPressed: () {},
              child: Icon(Icons.arrow_upward, color: Colors.white),
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                padding: EdgeInsets.all(15),
                backgroundColor: Colors.green,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
