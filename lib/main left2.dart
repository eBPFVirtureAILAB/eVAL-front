import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EVAL AI',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xFF1E1E2E),
        primaryColor: Color(0xFF9D7CD8),
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _selectedFile = 'hello-func.bpf.c';

  final Map<String, String> files = {
    'hello-func.bpf.c':
        '# hello-func.bpf.c\n#include <linux/bpf.h>\n#include <bpf/bpf_helpers.h>\n\n...',
    'hello.bpf.c': '// hello.bpf.c content',
    'test.py': '# test.py content',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          // Left sidebar
          Container(
            width: 200,
            color: Color(0xFF181825),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Files', style: TextStyle(color: Colors.white)),
                      Icon(Icons.add, color: Colors.white),
                    ],
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.folder, color: Colors.white),
                  title: Text('hello', style: TextStyle(color: Colors.white)),
                ),
                ..._buildFileList(),
              ],
            ),
          ),
          // Main content area (Editor)
          Expanded(
            child: Container(
              color: Color(0xFF1E1E2E),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(_selectedFile, style: TextStyle(color: Colors.white)),
                    SizedBox(height: 8),
                    Text(files[_selectedFile] ?? '',
                        style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _buildFileList() {
    return files.keys.map((String filename) {
      IconData icon;
      if (filename.endsWith('.py')) {
        icon = Icons.code;
      } else if (filename.endsWith('.c')) {
        icon = Icons.file_present;
      } else {
        icon = Icons.insert_drive_file;
      }

      return ListTile(
        leading: Icon(icon, color: Colors.blue),
        title: Text(filename, style: TextStyle(color: Colors.white)),
        selected: _selectedFile == filename,
        selectedTileColor: Colors.blue.withOpacity(0.3),
        onTap: () {
          setState(() {
            _selectedFile = filename;
          });
        },
      );
    }).toList();
  }
}
