import 'package:flutter/material.dart';

class DelegateScreen extends StatelessWidget {
  DelegateScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.red,
        shadowColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text('Delegate Task1'),
            Text('Task2'),
            Text('Task3'),
          ],
        ),
      ),
    );
  }
}
