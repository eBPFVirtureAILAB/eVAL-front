import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/darcula.dart';

class CodeEditorContent extends StatefulWidget {
  final String initialCode;

  CodeEditorContent({this.initialCode = ''});

  @override
  _CodeEditorContentState createState() => _CodeEditorContentState();
}

class _CodeEditorContentState extends State<CodeEditorContent> {
  late TextEditingController _codeController;
  int _lineCount = 1;

  @override
  void initState() {
    super.initState();
    _codeController = TextEditingController(text: widget.initialCode);
    _codeController.addListener(_updateLineCount);
    _updateLineCount();
  }

  @override
  void dispose() {
    _codeController.removeListener(_updateLineCount);
    _codeController.dispose();
    super.dispose();
  }

  void _updateLineCount() {
    setState(() {
      _lineCount = '\n'.allMatches(_codeController.text).length + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF2B2B2B),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 40,
            child: ListView.builder(
              itemCount: _lineCount,
              itemBuilder: (context, index) {
                return Container(
                  height: 20,
                  alignment: Alignment.centerRight,
                  padding: EdgeInsets.only(right: 8),
                  child: Text(
                    '${index + 1}',
                    style: TextStyle(color: Colors.grey[600], fontSize: 12),
                  ),
                );
              },
            ),
          ),
          Container(
            width: 1,
            height: double.infinity,
            color: Colors.green,
          ),
          Expanded(
            child: Stack(
              children: [
                HighlightView(
                  _codeController.text,
                  language: 'c',
                  theme: darculaTheme,
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  textStyle: TextStyle(
                    fontFamily: 'Courier',
                    fontSize: 14,
                  ),
                ),
                TextField(
                  controller: _codeController,
                  style: TextStyle(
                    color: Colors.transparent,
                    fontFamily: 'Courier',
                    fontSize: 14,
                  ),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    fillColor: Colors.transparent,
                    filled: true,
                  ),
                  maxLines: null,
                  onChanged: (value) {
                    setState(() {});
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
