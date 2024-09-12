import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyDialog extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables
  final TextEditingController controller;
  VoidCallback onsave;
  VoidCallback oncancel;
  MyDialog(
      {super.key,
      required this.controller,
      required this.onsave,
      required this.oncancel});

  @override
  State<MyDialog> createState() => _MyDialogState();
}

class _MyDialogState extends State<MyDialog> {
  final TextEditingController _controller = TextEditingController();
  // List<String> todoList = [];

  // // todoList.add (_textcontroller);

  // void onsave() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   await prefs.setStringList('tasks', todoList);

  //   setState(() {});
  // }

  // late SharedPreferences sp;

  // getSharedPreference() async {
  //   sp = await SharedPreferences.getInstance();
  // }

  // saveintosp() {}

  // readFromsp() {}

  // @override
  // void initState() {
  //   super.initState();
  //   getSharedPreference();
  //   initState();
  // }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.deepPurple[100],
      content: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SizedBox(
          height: 150,
          child: Column(
            children: [
              TextField(
                controller: widget.controller,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: "Add a new task"),
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: widget.onsave,
                      // onPressed: () {
                      //   // FirebaseFirestore.instance.collection("");
                      // },
                      // () async {
                      //   var name = widget.onsave.toString();
                      //   SharedPreferences perfs =
                      //       await SharedPreferences.getInstance();
                      //   perfs.setString("tasks", name);
                      //   name = perfs.getString("tasks") ?? "";

                      //   // perfs.setString("tasks", "metting with john");

                      //   setState(() {});
                      // },
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.deepPurple[600]),
                      child: const Text(
                        "Save",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 15),
                      )),
                  const SizedBox(
                    width: 10,
                  ),
                  TextButton(
                      onPressed: widget.oncancel,
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.deepPurple[600]),
                      child: const Text(
                        "Cancel",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 15),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
