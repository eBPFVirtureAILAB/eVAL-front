import 'package:flutter/material.dart';
import 'file_explorer/file_explorer.dart';
import 'code_editor/code_editor.dart';
import 'result_area/result_area.dart';
import 'ai_assistant/ai_assistant.dart';

class IDEScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 1,
            child: FileExplorer(),
          ),
          Expanded(
            flex: 3,
            child: CodeEditor(),
          ),
          Expanded(
            flex: 2,
            child: Column(
              children: [
                Expanded(
                  child: ResultArea(),
                ),
                Expanded(
                  child: AIAssistant(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
