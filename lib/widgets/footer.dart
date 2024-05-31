import 'package:eval_front/constants/constants.dart';
import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 42,
      color: Colors.green,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 26.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '© 2024 EVAL, all rights reserved',
              style: TextStyle(color: primaryColor),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Text(
                    'Any Questions?',
                    style: TextStyle(
                      color: primaryColor,
                    ),
                  ),
                ),
                SizedBox(width: 4),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    'Send email',
                    style: TextStyle(
                      color: secondaryLime,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
