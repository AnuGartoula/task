import "package:flutter/material.dart";

class MySettings extends StatefulWidget {
  const MySettings({super.key});

  @override
  State<MySettings> createState() => _MySettingsState();
}

class _MySettingsState extends State<MySettings> {
  void _showdialog() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text(
              "Choose a Theme",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
            ),
            backgroundColor: Colors.deepPurple[100],
            content: const Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                mainAxisSize: MainAxisSize.min, //reduced the size of dialog box
                children: [
                  Text(
                    "Light",
                    style: TextStyle(
                        fontSize: 15,
                        color: Color.fromARGB(255, 58, 35, 73),
                        fontWeight: FontWeight.w500),
                  ),
                  Divider(
                    height: 8,
                    color: Color.fromARGB(118, 2, 21, 60),
                  ),
                  Text(
                    "Dark",
                    style: TextStyle(
                        fontSize: 15,
                        color: Color.fromARGB(255, 58, 35, 73),
                        fontWeight: FontWeight.w500),
                  ),
                  Divider(
                    height: 8,
                    color: Color.fromARGB(118, 2, 21, 60),
                  ),
                  Text(
                    "Default",
                    style: TextStyle(
                        fontSize: 15,
                        color: Color.fromARGB(255, 58, 35, 73),
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
          );
        });
  }

  void _dayDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text(
            "Choose a Day",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
          ),
          backgroundColor: Colors.deepPurple[100],
          content: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Saturday",
                  style: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 58, 35, 73),
                      fontWeight: FontWeight.w500),
                ),
                Divider(
                  height: 8,
                  color: Color.fromARGB(118, 2, 21, 60),
                ),
                Text(
                  "Sunday",
                  style: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 58, 35, 73),
                      fontWeight: FontWeight.w500),
                ),
                Divider(
                  height: 8,
                  color: Color.fromARGB(118, 2, 21, 60),
                ),
                Text(
                  "Monday",
                  style: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 58, 35, 73),
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Settings",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 78, 46, 133),
            ),
          ),
        ),
        body: Container(
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.only(bottom: 20 ),
          child: ListView(children: [
            Text(
              "General",
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.deepPurple[600],
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
                onTap: _showdialog,
                child: Row(children: [
                  Icon(
                    Icons.format_paint_sharp,
                    color: Colors.deepPurple[600],
                  ),

                  Container(
                    margin: const EdgeInsets.only(left: 10),
                    child: Text(
                      "Themes",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.deepPurple[500],
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  // const SizedBox(
                  //   width: 240,
                  // ),
                  const Expanded(
                    child: Text(
                      "Light",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(255, 70, 64, 80),
                          fontWeight: FontWeight.w400),
                    ),
                  )
                ])),

            const Divider(
              height: 40,
              color: Color.fromARGB(255, 80, 79, 82),
            ),
            // IconButton(
            //     onPressed: _showdialog,
            //     icon: Icon(
            //       Icons.arrow_forward_ios,
            //       color: Colors.deepPurple[500],
            //       size: 20,
            //     ))

            // const SizedBox(
            //   height: 20,
            // ),

            GestureDetector(
              onTap: _dayDialog,
              child: Row(
                children: [
                  Icon(
                    Icons.date_range,
                    color: Colors.deepPurple[600],
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 12),
                    child: Text(
                      "Start of the week",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.deepPurple[500],
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  const Expanded(
                    child: Text(
                      "Monday",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(255, 70, 64, 80),
                          fontWeight: FontWeight.w400),
                    ),
                  )
                ],
              ),
            ),

            const Divider(
              height: 40,
              color: Color.fromARGB(255, 80, 79, 82),
            ),
            Row(
              children: [
                Icon(
                  Icons.calendar_month_sharp,
                  color: Colors.deepPurple[600],
                ),
                Container(
                  margin: const EdgeInsets.only(left: 12),
                  child: Text(
                    "Dateformat",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.deepPurple[500],
                        fontWeight: FontWeight.w500),
                  ),
                ),
                const Expanded(
                  child: Text(
                    "DD/MM/YYYY",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(255, 70, 64, 80),
                        fontWeight: FontWeight.w400),
                  ),
                )
              ],
            ),

            const Divider(
              height: 40,
              color: Color.fromARGB(255, 80, 79, 82),
            ),
            Row(
              children: [
                Icon(
                  Icons.notifications,
                  color: Colors.deepPurple[600],
                ),
                Container(
                  margin: const EdgeInsets.only(left: 10),
                  child: Text(
                    "Notification and Reminder",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.deepPurple[500],
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
          ]),
        ));
  }
}
