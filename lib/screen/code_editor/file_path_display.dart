import 'package:flutter/material.dart';
import 'custom_tab.dart';

class FilePathDisplay extends StatelessWidget {
  final String filePath;
  final TabController tabController;

  FilePathDisplay({required this.filePath, required this.tabController});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // 탭바
        Container(
          color: Color.fromRGBO(255, 255, 255, 0.05),
          child: TabBar(
            controller: tabController,
            isScrollable: true,
            tabs: [
              CustomTab(
                label: 'hello-func.bpf.c',
                isSelected: tabController.index == 0,
              ),
              CustomTab(
                label: 'hello.bpf.c',
                isSelected: tabController.index == 1,
              ),
              CustomTab(
                label: 'test.py',
                isSelected: tabController.index == 2,
              ),
            ],
            indicator: BoxDecoration(
              color: Color.fromRGBO(255, 255, 255, 0.05),
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
                filePath,
                style: TextStyle(color: Colors.grey),
              ),
              Spacer(),
              Icon(Icons.download, color: Colors.green),
            ],
          ),
        ),
      ],
    );
  }
}
