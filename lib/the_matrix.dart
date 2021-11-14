// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:thoth_script/compunonds.dart';
import 'package:thoth_script/screens/delete_screen.dart';

class ThothScript extends StatefulWidget {
  const ThothScript({Key? key}) : super(key: key);

  @override
  State<ThothScript> createState() => _ThothScriptState();
}

class _ThothScriptState extends State<ThothScript> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height / 7;
    int selectedIndex = 0;

    void onTapHandler(int index) {
      setState(() {
        selectedIndex = index;
      });
    }

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: height,
          horizontal: 10,
        ),
        child: GridView.builder(
          itemCount: 4,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: GridTile(
                // footer: Text('index: $index'),
                child: girdviewviewer(index, context),
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        // backgroundColor: Colors.white,
        elevation: 70,
        showSelectedLabels: true,
        onTap: (int index) {
          onTapHandler(index);
          myNavigator(context, index);
        },
        selectedItemColor: Colors.green[300],
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.add_shopping_cart),
            label: 'Do',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.alarm_add),
            label: 'Decide',
            // activeIcon: DecideScreen(),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event),
            label: 'Delegate',
            // activeIcon: DelegateScreen(),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const DeleteScreen()),
          );
        },
        child: const Icon(Icons.delete),
        backgroundColor: Colors.grey,
        hoverColor: Colors.red,
        splashColor: Colors.red,
      ),
    );
  }
}
