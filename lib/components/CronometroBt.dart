import 'package:flutter/material.dart';

class CronometroBt extends StatelessWidget {
  final String texto;
  final IconData icone;

  const CronometroBt({super.key, required this.texto, required this.icone});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Row(children: [Icon(icone), Text(texto)]),
    );
  }
}
