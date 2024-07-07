import 'package:flutter/material.dart';

class CommandInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      color: Color.fromRGBO(255, 255, 255, 0.05),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            color: Color(0xFF2D2D3D),
            child: Text('hello', style: TextStyle(color: Colors.white)),
          ),
          SizedBox(width: 8),
          Expanded(
            child: Text(
              'bpftool prog load hello-func.bpf.o',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          ElevatedButton(
            child: Text('RUN'),
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.black,
              backgroundColor: Colors.green,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
