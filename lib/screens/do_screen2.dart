import 'package:flutter/material.dart';

class DoScreen2 extends StatefulWidget {
  const DoScreen2({Key? key}) : super(key: key);

  @override
  State<DoScreen2> createState() => _DoScreen2State();
}

class _DoScreen2State extends State<DoScreen2> {
  List<TextEditingController> textcontroller = [];
  TextEditingController Tcon = TextEditingController();
  int index = 0;

  Widget _list(context, index) {
    if (index > 0) {
      return ListView.builder(
        itemCount: index,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Center(
              child: Text(
                Tcon.text,
              ),
            ),
          );
        },
      );
    } else {
      return ListView(
        shrinkWrap: true,
        children: const <Widget>[
          Text("Add task..."),
        ],
      );
    }
  }

  // Widget addtasks(textcontroller) {
  //   setState(() {
  //     Text(textcontroller.text);
  //   });
  //   return _buildList();
  // }
  //
  // Widget _buildList() {
  //   return ListView.builder(
  //     itemBuilder: (context, index) {
  //       if (index.isOdd) return myDivider();
  //
  //       textcontroller.add(TextEditingController());
  //
  //       return _buildrow(textcontroller[index]);
  //     },
  //   );
  // }
  //
  // Widget _buildrow(TextEditingController textcontroller) {
  //   return ListTile(
  //     title: Text(textcontroller.text),
  //     trailing: const Icon(
  //       Icons.favorite,
  //     ),
  //   );
  // }

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
          children: [
            Expanded(
              child: _list(context, index),
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 30.0,
                  right: 30,
                  top: 10,
                ),
                child: TextField(
                  textAlign: TextAlign.center,
                  onSubmitted: (value) {
                    setState(() {
                      Tcon.text = value;
                      index++;

                      print(index);
                    });
                  },
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        backgroundColor: Colors.red,
        hoverColor: Colors.white,
        splashColor: Colors.white,
        onPressed: () {
          setState(() {
            showModalBottomSheet(
                context: context,
                builder: (context) {
                  return Wrap(
                    children: [
                      InkWell(
                        child: const ListTile(
                          leading: Icon(Icons.add_task),
                          title: Text('Add Task'),
                        ),
                        onTap: () {},
                      ),
                      const ListTile(
                        leading: Icon(Icons.share),
                        title: Text('Share'),
                      ),
                      const ListTile(
                        leading: Icon(Icons.link),
                        title: Text('Get link'),
                      ),
                      const ListTile(
                        leading: Icon(Icons.remove_outlined),
                        title: Text('Remove'),
                      ),
                    ],
                  );
                });
          });
        },
      ),
    );
  }
}
