import 'package:flutter/material.dart';

class LargeScreen extends StatelessWidget {
  const LargeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Container(color: Colors.amber.shade100)),
        Expanded(
            flex: 2,
            child: Container(
              color: Colors.amber.shade200,
            )),
        Expanded(
            flex: 2,
            child: Container(
              color: Colors.amber.shade300,
            )),
      ],
    );
  }
}
