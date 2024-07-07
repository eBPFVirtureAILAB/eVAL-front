import 'package:flutter/material.dart';

class CustomTab extends StatelessWidget {
  final String label;
  final bool isSelected;
  final bool isFirst;

  CustomTab(
      {required this.label, required this.isSelected, this.isFirst = false});

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: ClipPath(
        clipper: TabClipper(),
        child: Container(
          padding: EdgeInsets.only(
              left: isFirst ? 0 : 16, right: 24, top: 8, bottom: 8),
          decoration: BoxDecoration(
            color: isSelected ? Color(0xFF301B3C) : Color(0xFF14041A),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(label,
                  style: TextStyle(
                      color: isSelected ? Colors.white : Colors.grey)),
              if (isSelected) ...[
                SizedBox(width: 8),
                Icon(Icons.close, size: 16, color: Colors.white)
              ]
            ],
          ),
        ),
      ),
    );
  }
}

class TabClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(size.width - 15, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
