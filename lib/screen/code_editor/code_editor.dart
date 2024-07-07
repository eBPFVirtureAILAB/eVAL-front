import 'package:flutter/material.dart';
import 'code_editor_content.dart';

class CodeEditor extends StatefulWidget {
  @override
  _CodeEditorState createState() => _CodeEditorState();
}

class _CodeEditorState extends State<CodeEditor>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

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
            // 탭바
            Container(
              color: Color(0xFF14041A),
              child: TabBar(
                controller: _tabController,
                isScrollable: true,
                tabs: [
                  Tab(
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                      decoration: BoxDecoration(
                        color: _tabController.index == 0
                            ? Color.fromRGBO(255, 255, 255, 0.05)
                            : Colors.transparent,
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(8)),
                      ),
                      child: Text('hello-func.bpf.c'),
                    ),
                  ),
                  Tab(
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      decoration: BoxDecoration(
                        color: _tabController.index == 1
                            ? Color(0xFF2D2D3D)
                            : Colors.transparent,
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(8)),
                      ),
                      child: Text('hello.bpf.c'),
                    ),
                  ),
                  Tab(
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      decoration: BoxDecoration(
                        color: _tabController.index == 2
                            ? Color(0xFF2D2D3D)
                            : Colors.transparent,
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(8)),
                      ),
                      child: Text('test.py'),
                    ),
                  ),
                ],
                indicator: BoxDecoration(
                  color: Colors.transparent,
                ),
                labelColor: Colors.white,
                unselectedLabelColor: Colors.grey,
              ),
            ),

            // 파일 경로 표시
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              color: Color.fromRGBO(255, 255, 255, 0.05),
              child: Row(
                children: [
                  Icon(Icons.refresh, color: Colors.blue),
                  SizedBox(width: 8),
                  Text(
                    'hello / hello-func.bpf.c',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Spacer(),
                  Icon(Icons.download, color: Colors.green),
                ],
              ),
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
            Container(
              padding: EdgeInsets.all(8),
              color: Color.fromRGBO(255, 255, 255, 0.05),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    color: Color(0xFF2D2D3D),
                    child: Text('hello', style: TextStyle(color: Colors.white)),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      'bpftool prog load hello-func.bpf.o',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  ElevatedButton(
                    child: Text('RUN'),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black,
                      backgroundColor: Colors.green,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
