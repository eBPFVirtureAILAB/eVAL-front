import 'package:flutter/material.dart';

class ResultArea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[850],
      padding: EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Result',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          SizedBox(height: 8),
          Expanded(
            child: Container(
              color: Colors.black,
              padding: EdgeInsets.all(8.0),
              child: Text(
                  'Monitoring dropped packets, hit CTRL+C to stop\n12:34:56 drop 60 IP 192.168.1.2.54321 > 192.168.1.1.80:\nFlags [S], seq 0, win 65535, length 0'),
            ),
          ),
          SizedBox(height: 8),
          ElevatedButton(
            child: Text('Check again'),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
