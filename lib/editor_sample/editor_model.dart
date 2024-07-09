import 'package:flutter/material.dart';

class EditorModel extends ChangeNotifier {
  final TextEditingController controller = TextEditingController();

  String get content => controller.text;

  void updateContent(String newContent) {
    if (controller.text != newContent) {
      controller.text = newContent;
      notifyListeners();
    }
  }

  // 초기 content를 설정하는 메서드
  void setInitialContent(String initialContent) {
    controller.text = initialContent;
    notifyListeners();
  }

  // 내용을 지우는 메서드
  void clearContent() {
    controller.clear();
    notifyListeners();
  }

  // 내용을 추가하는 메서드
  void appendContent(String additionalContent) {
    controller.text += additionalContent;
    notifyListeners();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
