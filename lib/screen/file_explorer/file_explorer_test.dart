import 'package:flutter/material.dart';

class FileExplorer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[900],
      child: Column(
        children: [
          ListTile(
            title: Text('Files'),
            trailing: IconButton(
              icon: Icon(Icons.add),
              onPressed: () {},
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                ListTile(title: Text('hello')),
                ListTile(title: Text('hello-func.bpf.c')),
                ListTile(title: Text('hello.bpf.c')),
                ListTile(title: Text('test.py')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
