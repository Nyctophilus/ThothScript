// ignore_for_file: non_constant_identifier_names, avoid_print, curly_braces_in_flow_control_structures

import 'package:flutter/material.dart';
import 'package:thoth_script/screens/decide_screen.dart';
import 'package:thoth_script/screens/delegate_screen.dart';
import 'package:thoth_script/screens/delete_screen.dart';
import 'package:thoth_script/screens/do_screen2.dart';

Widget VerticalText1() => RotatedBox(
      quarterTurns: 1,
      child: RichText(
        text: const TextSpan(
          text: 'Important',
          style: TextStyle(color: Colors.black),
          children: [
            WidgetSpan(
              child: RotatedBox(quarterTurns: -1, child: Text('😃')),
            )
          ],
        ),
      ),
    );
Widget VerticalText2() => RotatedBox(
      quarterTurns: 1,
      child: RichText(
        text: const TextSpan(
          text: 'Not Important',
          style: TextStyle(color: Colors.black),
          children: [
            WidgetSpan(
              child: RotatedBox(quarterTurns: -1, child: Text('🥺')),
            )
          ],
        ),
      ),
    );

Widget DoBuilder(context) => InkWell(
      child: Container(
        color: Colors.red,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Do',
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
            Text(
              'do it NOW!',
              style: TextStyle(fontSize: 17, color: Colors.white),
            ),
          ],
        ),
      ),
      onTap: () {
        print('navigate to DoScreen');
        MyNavigator(context, 0);
      },
    );

Widget DecideBuilder(context) => InkWell(
      child: Container(
        color: Colors.blue,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Decide',
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
            Text(
              'schedule a time to do it.',
              style: TextStyle(fontSize: 17, color: Colors.white),
            ),
          ],
        ),
      ),
      onTap: () {
        print('navigate to DecideScreen');
        MyNavigator(context, 1);
      },
    );

Widget DelegateBuilder(context) => InkWell(
      child: Container(
        color: Colors.green,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Delegate',
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
            Text(
              'Who do it for you',
              style: TextStyle(fontSize: 17, color: Colors.white),
            ),
          ],
        ),
      ),
      onTap: () {
        print('navigate to DelegateScreen');
        MyNavigator(context, 2);
      },
    );

Widget DeleteBuilder(context) => InkWell(
      child: Container(
        color: Colors.grey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Delete',
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
            Text(
              'Eleminate it.',
              style: TextStyle(fontSize: 17, color: Colors.white),
            ),
          ],
        ),
      ),
      onTap: () {
        print('navigate to DeleteScreen');
        MyNavigator(context, 3);
      },
    );

Widget myDivider() => Padding(
      padding: const EdgeInsetsDirectional.only(
        start: 20.0,
      ),
      child: Container(
        width: double.infinity,
        height: 1.0,
        color: Colors.grey[300],
      ),
    );

Widget girdviewviewer(int index, context) {
  if (index == 0) {
    return DoBuilder(context);
  }
  if (index == 1) return DecideBuilder(context);
  if (index == 2)
    return DelegateBuilder(context);
  else
    return DeleteBuilder(context);
}

Widget? MyNavigator(context, int index) {
  if (index == 0) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => DoScreen2()),
    );
  } else if (index == 1) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => DecideScreen()),
    );
  } else if (index == 2)
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => DelegateScreen()),
    );
  else
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => DeleteScreen()),
    );
}

Widget form_maker({
  required TextEditingController textcontroller,
  VoidCallback? onChange(value)?,
}) {
  return TextFormField(
    controller: textcontroller,
    keyboardType: TextInputType.text,
    onFieldSubmitted: (String value) {
      print(value);
    },
    onChanged: onChange,
    decoration: const InputDecoration(
      labelText: 'Add task...',
      prefixIcon: Icon(
        Icons.add,
      ),
      border: OutlineInputBorder(),
    ),
  );
}
