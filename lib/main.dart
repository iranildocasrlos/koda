import 'package:flutter/material.dart';
import 'package:koda/pages/Pomodoro.dart';
import 'package:koda/store/pomodoro.store.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [Provider<PomodoroStore>(create: (_) => PomodoroStore())],
      child: MaterialApp(
        title: 'Kda Pomodoro',
        theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
        home: Pomodoro(),
      ),
    );
  }
}
