import 'package:flutter/material.dart';

class AIAssistant extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 0.05),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.auto_awesome, color: Color(0xFF50FA7B), size: 24),
                SizedBox(width: 8),
                Text(
                  'EVAL AI Assistant',
                  style: TextStyle(
                    color: Color(0xFF50FA7B),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 0.05),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                'Tell me the code to install kprobe in file system-related kernel code',
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(height: 12),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 0.05),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                "Yes, I'll let you know.",
                style: TextStyle(color: Color(0xFF50FA7B)),
              ),
            ),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 0.05),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(12),
                    child: Text(
                      'Sample.js',
                      style: TextStyle(color: Colors.white70),
                    ),
                  ),
                  Container(
                    color: Color.fromRGBO(255, 255, 255, 0.05),
                    padding: EdgeInsets.all(12),
                    child: Text(
                      '''#!/usr/bin/python3
                        from bcc import BPF
                        program = r"""
                        int hello(void *ctx) {
                            bpf_trace_printk("Hello World!");
                            return 0;
                        }
                      ''',
                      style: TextStyle(
                          color: Colors.white, fontFamily: 'monospace'),
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 0.05),
                borderRadius: BorderRadius.circular(24),
              ),
              child: Row(
                children: [
                  Icon(Icons.auto_awesome, color: Color(0xFF50FA7B), size: 24),
                  SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      'Ask a question or type "/" for topics',
                      style: TextStyle(color: Colors.white70),
                    ),
                  ),
                  Icon(Icons.arrow_forward, color: Color(0xFF50FA7B)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
