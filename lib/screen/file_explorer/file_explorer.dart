import 'package:flutter/material.dart';
import 'file_explorer_files.dart';

class FileExplorer extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<FileExplorer> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    FileExplorerFiles(),
    SearchPage(),
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          // Left sidebar
          Container(
            width: 60,
            color: Color(0xFF14041A),
            child: Column(
              children: [
                SizedBox(height: 20),
                _buildNavItem(Icons.folder, 0),
                _buildNavItem(Icons.search, 1),
                _buildNavItem(Icons.settings, 2),
              ],
            ),
          ),
          // Main content area
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(0.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFFC66AFF), width: 0.3),
                ),
                child: IndexedStack(
                  index: _selectedIndex,
                  children: _pages,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNavItem(IconData icon, int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0.0),
      child: IconButton(
        icon: Icon(icon),
        color: _selectedIndex == index ? Color(0xFF9D7CD8) : Colors.grey,
        onPressed: () {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Search Page'));
  }
}

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Settings Page'));
  }
}
