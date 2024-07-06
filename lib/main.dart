import 'package:flutter/material.dart';
import 'screen/ide_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'eBPF Web IDE',
      theme: ThemeData.dark(),
      home: IDEScreen(),
    );
  }
}
