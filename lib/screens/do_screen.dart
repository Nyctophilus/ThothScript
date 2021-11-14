// import 'package:flutter/material.dart';
// import 'package:thoth_script/compunonds.dart';
//
// class DoScreen extends StatefulWidget {
//   const DoScreen({Key? key}) : super(key: key);
//
//   @override
//   State<DoScreen> createState() => _DoScreenState();
// }
//
// class _DoScreenState extends State<DoScreen> {
//   List<TextEditingController> textcontroller = [];
//
//   Widget addtasks(textcontroller) {
//     setState(() {
//       Text(textcontroller.text);
//     });
//     return _buildList();
//   }
//
//   Widget _buildList() {
//     return ListView.builder(
//       itemBuilder: (context, index) {
//         if (index.isOdd) return myDivider();
//
//         textcontroller.add(new TextEditingController());
//
//         return _buildrow(textcontroller[index]);
//       },
//     );
//   }
//
//   Widget _buildrow(TextEditingController textcontroller) {
//     return ListTile(
//       title: Text(textcontroller.text),
//       trailing: Icon(
//         Icons.favorite,
//       ),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         foregroundColor: Colors.red,
//         shadowColor: Colors.white,
//       ),
//       body: Center(
//         child: SingleChildScrollView(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               _buildList(),
//               const SizedBox(
//                 height: 30,
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(
//                   left: 30.0,
//                   right: 30,
//                   top: 80,
//                 ),
//                 child: form_maker(
//                   textcontroller: textcontroller,
//                   onChange: (value) {
//                     setState(() {
//                       value = textcontroller;
//                     });
//                     // print(textcontroller.text);
//                   },
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         child: const Icon(Icons.add),
//         backgroundColor: Colors.red,
//         hoverColor: Colors.white,
//         splashColor: Colors.white,
//         onPressed: () {
//           setState(() {
//             showModalBottomSheet(
//                 context: context,
//                 builder: (context) {
//                   return Wrap(
//                     children: [
//                       InkWell(
//                         child: const ListTile(
//                           leading: Icon(Icons.add_task),
//                           title: Text('Add Task'),
//                         ),
//                         onTap: () {},
//                       ),
//                       const ListTile(
//                         leading: Icon(Icons.share),
//                         title: Text('Share'),
//                       ),
//                       const ListTile(
//                         leading: Icon(Icons.link),
//                         title: Text('Get link'),
//                       ),
//                       const ListTile(
//                         leading: Icon(Icons.remove_outlined),
//                         title: Text('Remove'),
//                       ),
//                     ],
//                   );
//                 });
//           });
//         },
//       ),
//     );
//   }
// }
