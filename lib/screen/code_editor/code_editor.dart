import 'package:flutter/material.dart';
import 'code_editor_content.dart';
import 'file_path_display.dart';
import 'command_input.dart';

class CodeEditor extends StatefulWidget {
  @override
  _CodeEditorState createState() => _CodeEditorState();
}

class _CodeEditorState extends State<CodeEditor>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final List<String> _filePaths = [
    'hello / hello-func.bpf.c',
    'hello / hello.bpf.c',
    'hello / test.py'
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Color.fromRGBO(255, 255, 255, 0.05),
        body: Column(
          children: [
            // 파일 경로 표시 (탭바 포함)
            FilePathDisplay(
              filePath: _filePaths[_tabController.index],
              tabController: _tabController,
            ),

            // 코드 에디터 영역
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  CodeEditorContent(),
                  CodeEditorContent(),
                  CodeEditorContent(),
                ],
              ),
            ),

            // 하단 명령어 입력
            CommandInput(),
          ],
        ),
      ),
    );
  }
}
