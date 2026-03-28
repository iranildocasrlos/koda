import 'package:flutter/material.dart';

class CronometroBt extends StatelessWidget {
  final String texto;
  final IconData icone;

  const CronometroBt({super.key, required this.texto, required this.icone});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 8,
        backgroundColor: Colors.black,
        // Ajuste este valor para aumentar ou diminuir a sombra
      ),
      onPressed: () {},
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(icone, color: Colors.white),
          ),
          Text(
            texto,
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
