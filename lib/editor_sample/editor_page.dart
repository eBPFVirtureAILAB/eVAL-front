import 'package:flutter/material.dart';
import 'package:code_text_field/code_text_field.dart';
import 'package:highlight/highlight.dart';
import 'package:highlight/languages/go.dart';
import 'package:flutter_highlight/themes/monokai-sublime.dart';

class EditorPage extends StatefulWidget {
  @override
  _EditorPageState createState() => _EditorPageState();
}

class _EditorPageState extends State<EditorPage> {
  CodeController? _codeController;

  @override
  void initState() {
    super.initState();
    const source = """
# hello-func.bpf.c
#include <linux/bpf.h>
#include <bpf/bpf_helpers.h>

static __attribute((noinline)) int get_opcode(struct
bpf_raw_tracepoint_args *ctx) {
    return ctx->args[1];
}

SEC("raw_tp/")
int hello(struct bpf_raw_tracepoint_args *ctx) {
    int opcode = get_opcode(ctx);
    bpf_printk("Syscall: %d", opcode);
    return 0;
}

char LICENSE[] SEC("license") = "Dual BSD/GPL";
""";

    _codeController = CodeController(
      text: source,
      language: go,
    );
  }

  @override
  void dispose() {
    _codeController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1E1E1E),
      body: SingleChildScrollView(
        child: CodeField(
          controller: _codeController!,
          textStyle: TextStyle(
            fontFamily: 'Courier New',
            fontSize: 14,
          ),
          lineNumbers: true,
          background: Color(0xFF1E1E1E),
        ),
      ),
    );
  }
}
