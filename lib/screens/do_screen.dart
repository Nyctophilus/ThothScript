// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';

class DoScreen extends StatefulWidget {
  const DoScreen({Key? key}) : super(key: key);

  @override
  State<DoScreen> createState() => _DoScreenState();
}

class _DoScreenState extends State<DoScreen> {
  TextEditingController tCon = TextEditingController();
  List<Text> listText = [];

  Widget _list(context) {
    if (listText.isNotEmpty) {
      return ListView(
        shrinkWrap: true,
        children: listText,
      );
    } else {
      return ListView(
        shrinkWrap: true,
        children: const [Text("Add Task...")],
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
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
                child: Container(
                  width: MediaQuery.of(context).size.width / 1.5,
                  height: MediaQuery.of(context).size.height / 3,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    image: DecorationImage(
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.2), BlendMode.dstATop),
                      fit: BoxFit.fill,
                      image: const AssetImage(
                          "assets/c65e41dc4f527bcacc51aaea0e2b4cce.jpg"),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 10,
                    ),
                    child: _list(context),
                  ),
                ),
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
                    controller: tCon,
                    onSubmitted: (value) {
                      setState(() {
                        tCon.text = value;
                        listText.add(Text(tCon.text));
                        tCon.clear();
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
                        GestureDetector(
                          child: const ListTile(
                            leading: Icon(Icons.add_task),
                            title: Text('Add Task'),
                          ),
                          onTap: () {
                            setState(() {
                              listText.add(Text(tCon.text));
                              tCon.clear();
                              FocusScope.of(context).unfocus();
                              Navigator.pop(context);
                            });
                          },
                        ),
                        GestureDetector(
                          child: const ListTile(
                            leading: Icon(Icons.remove_outlined),
                            title: Text('Remove'),
                          ),
                          onTap: () {
                            setState(() {
                              listText.remove(Text(tCon.text));
                              tCon.clear();
                              FocusScope.of(context).unfocus();
                              Navigator.pop(context);
                            });
                          },
                        ),
                      ],
                    );
                  });
            });
          },
        ),
      ),
    );
  }
}
