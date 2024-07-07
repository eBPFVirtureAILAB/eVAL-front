import 'package:flutter/material.dart';

class CodeEditorContent extends StatefulWidget {
  @override
  _CodeEditorContentState createState() => _CodeEditorContentState();
}

class _CodeEditorContentState extends State<CodeEditorContent> {
  TextEditingController _codeController = TextEditingController();
  int _lineCount = 1;

  @override
  void initState() {
    super.initState();
    _codeController.addListener(_updateLineCount);
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
      color: Color.fromRGBO(255, 255, 255, 0.05),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 30,
            child: ListView.builder(
              itemCount: _lineCount,
              itemBuilder: (context, index) {
                return Text(
                  '${index + 1}',
                  style: TextStyle(color: Colors.grey),
                  textAlign: TextAlign.right,
                );
              },
            ),
          ),
          SizedBox(width: 16),
          Container(
            width: 2,
            height: double.infinity,
            color: Colors.green,
          ),
          SizedBox(width: 16),
          Expanded(
            child: TextField(
              controller: _codeController,
              style: TextStyle(color: Colors.white),
              maxLines: null,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Type your code here...',
                hintStyle: TextStyle(color: Colors.grey),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
