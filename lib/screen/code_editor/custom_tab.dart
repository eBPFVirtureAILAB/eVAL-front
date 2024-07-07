import 'package:flutter/material.dart';

class CustomTab extends StatelessWidget {
  final String label;
  final bool isSelected;

  CustomTab({required this.label, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: isSelected ? Color(0xFF301B3C) : Colors.transparent,
          borderRadius: BorderRadius.vertical(top: Radius.circular(8)),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(label),
            SizedBox(width: 8),
            if (isSelected) Icon(Icons.close, size: 16)
          ],
        ),
      ),
    );
  }
}
