import 'package:cadastroflutter/util.dart';
import 'package:flutter/material.dart';

import 'Form.dart';
import 'RowButton.dart';

void main() {
  MyApp myapp = const MyApp();
  runApp(myapp);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Exercício Montagem de GUI',
            style: textButtonStyle,
          ),
          backgroundColor: Colors.blue.shade400,
        ),
        body: Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24.0,
              vertical: 24.0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: form,
            ),
          ),
        ),
      ),
    );
  }
}
