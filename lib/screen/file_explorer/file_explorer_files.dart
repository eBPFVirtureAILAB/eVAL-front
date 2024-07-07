import 'package:flutter/material.dart';

class FileExplorerFiles extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(255, 255, 255, 0.05), // 배경색 설정
      child: Column(
        children: [
          // Files 헤더
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      'Files',
                      style: TextStyle(
                        color: Color(0xFFA0F62D),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Icon(Icons.add, color: Color(0xFFA0F62D)),
              ],
            ),
          ),
          // 파일 리스트
          Expanded(
            child: ListView(
              children: [
                _buildFileItem(Icons.folder, 'Project', isFolder: true),
                _buildFileItem(Icons.insert_drive_file, 'hello-func.bpf.c',
                    indent: true, color: Color(0xFFC66AFF)),
                _buildFileItem(Icons.insert_drive_file, 'hello.bpf.c',
                    indent: true, color: Color(0xFFC66AFF)),
                _buildFileItem(Icons.insert_drive_file, 'test.py',
                    indent: true, color: Color(0xFFC66AFF)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFileItem(IconData icon, String name,
      {bool isFolder = false,
      bool indent = false,
      Color color = Colors.white}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: indent ? 32 : 16, vertical: 8),
      child: Row(
        children: [
          Icon(icon, color: color, size: 20),
          SizedBox(width: 8),
          Text(
            name,
            style: TextStyle(color: color),
          ),
        ],
      ),
    );
  }
}
