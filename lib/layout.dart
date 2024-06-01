import 'package:eval_front/constants/style.dart';
import 'package:eval_front/helpers/responsive.dart';
import 'package:eval_front/widgets/footer.dart';
import 'package:eval_front/widgets/large_screen.dart';
import 'package:eval_front/widgets/small_screen.dart';
import 'package:flutter/material.dart';

class SiteLayout extends StatelessWidget {
  const SiteLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: primaryColor,
              width: 2.0,
            ),
          ),
          child: ResponsiveWidget(
            largeScreen: LargeScreen(),
            smallScreen: SmallScreen(),
          ),
        ),
      ),
      bottomNavigationBar: Footer(),
    );
  }
}
