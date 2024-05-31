import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Evil',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        brightness: Brightness.dark,
        textTheme: GoogleFonts.mulishTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.black),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> _files = [
    'request-booking',
    'save-lead',
    'save-lead',
    'save-lead',
    'save-lead',
    'save-lead',
  ];

  final List<String> _code = [
    '''
#!//usr/bin/python3
from bcc import BPF
program = r"""
int hello(void *ctx) {
    bpf_trace_printk("Hello World!");
    return 0;
}
"""
b = BPF(text=program)
syscall = b.get_syscall_fnname("execve")
b.attach_kprobe(event=syscall, fn_name="hello")
b.trace_print()
''',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Evil'),
      ),
      body: Row(
        children: [
          Container(
            color: Colors.grey[900],
            width: 200,
            child: ListView.builder(
              itemCount: _files.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Icon(Icons.folder),
                  title: Text(_files[index]),
                );
              },
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.black,
              child: Column(
                children: [
                  Container(
                    color: Colors.purple[900],
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Title',
                            style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Title',
                            style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          _code[0],
                          style: TextStyle(
                            color: Colors.green,
                            fontFamily: 'Monospace',
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.purple[900],
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('RUN'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
