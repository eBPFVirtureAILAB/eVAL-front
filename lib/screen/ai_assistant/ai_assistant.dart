import 'package:flutter/material.dart';

class AIAssistant extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[850],
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: [
          Text('EVAL AI Assistant',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Expanded(
            child: Container(
              color: Colors.black,
              padding: EdgeInsets.all(8.0),
              child: Text('AI response will be displayed here'),
            ),
          ),
          TextField(
            decoration: InputDecoration(
              hintText: 'Ask a question or type "/" for topics',
              fillColor: Colors.grey[800],
              filled: true,
            ),
          ),
        ],
      ),
    );
  }
}
