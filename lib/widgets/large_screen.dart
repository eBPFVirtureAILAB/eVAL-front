import 'package:flutter/material.dart';

class LargeScreen extends StatelessWidget {
  const LargeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 1,
            child: Container(
              color: Colors.amber.shade50,
            )),
        Expanded(
            flex: 4,
            child: Container(
              color: Colors.amber.shade100,
            )),
        Expanded(
            flex: 9,
            child: Container(
              color: Colors.amber.shade200,
            )),
        Expanded(
            flex: 9,
            child: Container(
              color: Colors.amber.shade300,
            )),
      ],
    );
  }
}
