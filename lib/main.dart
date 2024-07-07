import 'package:flutter/material.dart';
import 'screen/ide_screen.dart';

void main() {
  runApp(EvalApp());
}

class EvalApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xFF14041A), // 어두운 보라색 배경
      ),
      home: Scaffold(
        body: Column(
          children: [
            AppBar(
              backgroundColor: Color(0xFF14041A),
              automaticallyImplyLeading: false, // 자동 뒤로가기 버튼 제거
              title: Container(
                alignment: Alignment.centerLeft,
                child: Image.asset(
                  'assets/icons/logo.png', // 로고 이미지 파일 경로
                  height: 40, // 로고 높이 조정 (필요에 따라 수정)
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFFC66AFF), width: 1),
                  ),
                  child: IDEScreen(),
                ),
              ),
            ),
            Footer(),
          ],
        ),
      ),
    );
  }
}

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      color: Color(0xFF14041A),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '© 2024 EVAL all rights reserved',
            style: TextStyle(color: Color(0xFFC66AFF), fontSize: 12),
          ),
          Row(
            children: [
              Text(
                'Any Questions?',
                style: TextStyle(color: Color(0xFFC66AFF), fontSize: 12),
              ),
              SizedBox(width: 8),
              Text(
                'Send email',
                style: TextStyle(
                  color: Color(0xFFA0F62D), // 연두색
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
