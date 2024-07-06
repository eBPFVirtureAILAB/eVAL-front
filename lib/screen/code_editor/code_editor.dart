import 'package:flutter/material.dart';

class CodeEditor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Column(
        children: [
          TabBar(
            tabs: [
              Tab(text: 'hello-func.bpf.c'),
              Tab(text: 'hello.bpf.c'),
              Tab(text: 'test.py'),
            ],
          ),
          Expanded(
            child: TabBarView(
              children: [
                CodeEditorTab(),
                CodeEditorTab(),
                CodeEditorTab(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CodeEditorTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      padding: EdgeInsets.all(8.0),
      child: ListView(
        children: [
          Text('1  #include <linux/bpf.h>',
              style: TextStyle(fontFamily: 'monospace')),
          Text('2  #include <bpf/bpf_helpers.h>',
              style: TextStyle(fontFamily: 'monospace')),
          Text('3', style: TextStyle(fontFamily: 'monospace')),
          Text('4  static __attribute__((noinline)) int get_opcode(struct',
              style: TextStyle(fontFamily: 'monospace')),
          Text('5  bpf_raw_tracepoint_args *ctx) {',
              style: TextStyle(fontFamily: 'monospace')),
          Text('6      return ctx->args[1];',
              style: TextStyle(fontFamily: 'monospace')),
          Text('7  }', style: TextStyle(fontFamily: 'monospace')),
          // ... 더 많은 코드 라인
        ],
      ),
    );
  }
}
