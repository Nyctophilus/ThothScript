import 'package:flutter/material.dart';

class DeleteScreen extends StatelessWidget {
  DeleteScreen({Key? key}) : super(key: key);

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
            Text('Delete Task1'),
            Text('Task2'),
            Text('Task3'),
          ],
        ),
      ),
    );
  }
}
