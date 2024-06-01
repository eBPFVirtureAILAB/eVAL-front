import 'package:flutter/material.dart';

class LargeScreen extends StatefulWidget {
  const LargeScreen({Key? key}) : super(key: key);

  @override
  _LargeScreenState createState() => _LargeScreenState();
}

class _LargeScreenState extends State<LargeScreen> {
  int selectedIndex = 0;

  final List<Widget> _screens = [
    Center(child: Text("Home Screen")),
    Center(child: Text("Star Screen")),
    Center(child: Text("Settings Screen")),
  ];

  void onIconPressed(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 60,
          child: Container(
            color: Colors.amber.shade50,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                IconButton(
                  icon: Icon(Icons.home, size: 30),
                  onPressed: () => onIconPressed(0),
                ),
                SizedBox(height: 20),
                IconButton(
                    icon: Icon(Icons.star, size: 30),
                    onPressed: () => onIconPressed(1)),
                SizedBox(height: 20),
                IconButton(
                    icon: Icon(Icons.settings, size: 30),
                    onPressed: () => onIconPressed(2))
              ],
            ),
          ),
        ),
        SizedBox(
          width: 240,
          child: Container(
            color: Colors.amber.shade100,
            child: _screens[selectedIndex],
          ),
        ),
        Expanded(
            flex: 8,
            child: Container(
              color: Colors.amber.shade200,
            )),
        Expanded(
            flex: 8,
            child: Container(
              color: Colors.amber.shade300,
            )),
      ],
    );
  }
}
