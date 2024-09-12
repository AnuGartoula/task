// ignore: file_names
// import 'package:flutter/material.dart';
// import 'package:task/pages/calender.dart';
// import 'package:task/pages/tasks.dart';

// class Myhomepage extends StatefulWidget {
//   const Myhomepage({super.key});

//   @override
//   State<Myhomepage> createState() => _MyhomepageState();
// }

// class _MyhomepageState extends State<Myhomepage> {
//   List todOList = ["Schedule Meetings", false, "Make Tutorials ", true];
//   void checkBoxChanged(bool value, int index) {
//     setState(() {
//       todOList[index][1] = !todOList[index][1];
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         elevation: 0,
//         leading: Padding(
//           padding: const EdgeInsets.only(left: 20.0),
//           child: IconButton(
//             onPressed: () {},
//             icon: const Icon(
//               Icons.arrow_back_rounded,
//               color: Colors.deepPurple,
//               size: 40,
//             ),
//           ),
//         ),
//         actions: [
//           Padding(
//             padding: const EdgeInsets.only(right: 20.0),
//             child: IconButton(
//                 onPressed: () {},
//                 icon: const Icon(
//                   Icons.person,
//                   color: Colors.deepPurple,
//                   size: 50,
//                 )),
//           )
//         ],
//       ),
//       body: ListView.builder(
//         itemCount: todOList.length,
//         itemBuilder: (context, index) {
//           return MyTasks(
//             taskName: todOList[index][0],
//             taskcomplete: todOList[index][1],
//             onChanged: (value) => checkBoxChanged,
//           );
//         },
//         scrollDirection: Axis.vertical,
//       ),
//       children: [
//         Container(
//           margin: const EdgeInsets.only(left: 25.0),
//           child: Image.asset(
//             "assets/homeimage.png",
//             height: 400,
//           ),
//         ),
//         Container(
//           alignment: Alignment.centerLeft,
//           margin: const EdgeInsetsDirectional.all(20),
//           child: const Text(
//             "Calender",
//             style: TextStyle(
//                 fontSize: 25,
//                 fontWeight: FontWeight.bold,
//                 color: Color.fromARGB(255, 78, 46, 133)),
//           ),
//         ),
//         const MyCalender(),
//         MyTasks(
//           taskName: "Schedule a Meeting",
//           taskcomplete: true,
//           onChanged: (p0) {},
//         )
//       ],
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:task/pages/calender.dart';
// import 'package:task/pages/dialog.dart';
// import 'package:task/pages/tasks.dart';

// class Myhomepage extends StatefulWidget {
//   const Myhomepage({super.key});

//   @override
//   State<Myhomepage> createState() => _MyhomepageState();
// }

// class _MyhomepageState extends State<Myhomepage> {
// // text controller
//   final _controller = TextEditingController();

// //todolist
//   List todOList = [
//     ["Schedule Meetings", false],
//     ["Make Tutorials", true]
//   ];

//   void checkBoxChanged(bool? value, int index) {
//     setState(() {
//       todOList[index][1] = value ?? false;
//     });
//   }

// //saveNewTask
//   void saveNewTask() {
//     setState(() {
//       todOList.add(todOList);
//       _controller.clear();
//     });
//     Navigator.of(context).pop();
//   }

//   createNewTask() {
//     showDialog(
//       context: context,
//       builder: (context) {
//         return MyDialog(
//           controller: _controller,
//           oncancel: () => Navigator.of(context).pop,
//           onsave: saveNewTask,
//         );
//       },
//     );
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         elevation: 0,
//         leading: Padding(
//           padding: const EdgeInsets.only(left: 20.0),
//           child: IconButton(
//             onPressed: () {},
//             icon: const Icon(
//               Icons.arrow_back_rounded,
//               color: Colors.deepPurple,
//               size: 40,
//             ),
//           ),
//         ),
//         actions: [
//           Padding(
//             padding: const EdgeInsets.only(right: 20.0),
//             child: IconButton(
//               onPressed: () {},
//               icon: const Icon(
//                 Icons.person,
//                 color: Colors.deepPurple,
//                 size: 50,
//               ),
//             ),
//           )
//         ],
//       ),
//       floatingActionButton: Container(
//         decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
//         child: FloatingActionButton(
//           onPressed: createNewTask,
//           child: const Icon(
//             Icons.add,
//             color: Colors.black,
//           ),
//         ),
//       ),
//       body: ListView(
//         children: [
//           Container(
//             margin: const EdgeInsets.only(left: 25.0),
//             child: Image.asset(
//               "assets/homeimage.png",
//               height: 400,
//             ),
//           ),
//           Container(
//             alignment: Alignment.centerLeft,
//             margin: const EdgeInsetsDirectional.all(20),
//             child: const Text(
//               "Calender",
//               style: TextStyle(
//                   fontSize: 25,
//                   fontWeight: FontWeight.bold,
//                   color: Color.fromARGB(255, 78, 46, 133)),
//             ),
//           ),
//           const MyCalender(),
//           ...todOList.map((task) {
//             int index = todOList.indexOf(task);
//             return MyTasks(
//               taskName: todOList[0],
//               taskcomplete: todOList[index][1],
//               onChanged: (value) => checkBoxChanged(value, index),
//             );
//           }),
//         ],
//       ),
//     );
//   }
// }

// the set state is aobject
//when data should be stored temporary and has to be sent from one page to another it acts as a medium
// build context works when the data from hardwares are obtained for example data from audio ie microphones while rotatiing phones
//we generate some data so buildcomtext captures the data
//when we need to show the data that we get from the system we need context
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task/pages/calender.dart';
import 'package:task/pages/calenderitems.dart';
import 'package:task/pages/dialog.dart';
import 'package:task/pages/favourites.dart';
import 'package:task/pages/settings.dart';
import 'package:task/pages/tasks.dart';
import 'package:task/pages/users.dart';

class Myhomepage extends StatefulWidget {
  static const String id = 'homepage';
  const Myhomepage({super.key});

  @override
  State<Myhomepage> createState() => _MyhomepageState();
}

class _MyhomepageState extends State<Myhomepage> {
  String text = '';
  bool textbool = false;

  @override
  void initState() {
    //  implement initState
    callData();

    super.initState();
  }

  callData() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    text = pref.getString('tasks') ?? '';
    setState(() {});
  }

  // text controller  = use this contoller to get what the user typed
  final _controller = TextEditingController();

  // todolist
  List<dynamic> todOList = [
    ["Schedule Meetings", false],
    [
      "Make Tutorials",
      true,
    ],
    ["Dinner with John", false],
    ["CS 101 lecture", false],
    ["Meetings with Executives", true]
  ];

  void checkBoxChanged(bool? value, int index) {
    setState(() {
      todOList[index][1] = value ?? false;
    });
  }

// void savedata(){

//     List<String> todOList = list.map(item) => json.encode(item.toMap()).tolist();
// }
  //saveNewTask
  void saveNewTask() {
    setState(() {
      todOList.add([_controller.text, false]);
      _controller.clear(); //clears out the textfield
    });
    Navigator.of(context).pop();
  }

  void createNewTask() {
    showDialog(
      context: context,
      builder: (context) {
        return MyDialog(
          controller: _controller,
          oncancel: () => Navigator.of(context).pop(),
          onsave: saveNewTask,
        );
      },
    );
  }

  void deleteTask(int index) {
    setState(() {
      todOList.removeAt(index);
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void favouritetask(bool? value, int index) {
    setState(() {
      todOList[index][1] = value ?? false;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Globaldata().data;
    // print(Globaldata().data);
    // print('Globaldata().data');
    //buildcontext records the widgets
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        // scrolledUnderElevation: 0.0,
        // surfaceTintColor: Colors.transparent,
        forceMaterialTransparency: true,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back_rounded,
              color: Colors.deepPurple,
              size: 30,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: IconButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  UserLogin.id,
                );
              },
              icon: const Icon(
                Icons.person,
                color: Colors.deepPurple,
                size: 40,
              ),
            ),
          )
        ],
      ),
      floatingActionButton: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
        child: FloatingActionButton(
          onPressed: createNewTask,
          child: const Icon(
            Icons.add,
            color: Colors.black,
          ),
        ),
      ),
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 25.0),
            child: Image.asset(
              "assets/homeimage.png",
              height: 300,
            ),
          ),
          Row(
            children: [
              Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsetsDirectional.all(20),
                  child: const Text(
                    "Calendar",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 78, 46, 133),
                    ),
                  )),
              const SizedBox(
                width: 190,
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Calendar()));
                },
                icon: const Icon(Icons.calendar_month),
                iconSize: 30,
                color: const Color.fromARGB(255, 78, 46, 133),
              )
            ],
          ),
          const MyCalender(),
          Container(
            alignment: Alignment.centerLeft,
            margin: const EdgeInsetsDirectional.only(
              top: 25,
              start: 20,
            ),
            child: const Text(
              "Activities",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 78, 46, 133),
              ),
            ),
          ),
          MyTasks(
            taskName: text,
            taskcomplete: textbool,
            onChanged: (value) => checkBoxChanged(value, 1),
            deleteFunction: (context) => deleteTask,
          ),
          ...todOList.map((task) {
            int index = todOList.indexOf(task);
            return MyTasks(
              taskName: task[0],
              taskcomplete: task[1],
              onChanged: (value) => checkBoxChanged(value, index),
              deleteFunction: (context) => deleteTask,
            );
          }),
        ],
      ),
      bottomNavigationBar: GNav(
          gap: 7,
          color: const Color.fromARGB(255, 255, 255, 255),
          activeColor: const Color.fromARGB(255, 17, 1, 45),
          backgroundColor: const Color.fromARGB(255, 174, 162, 201),
          tabs: [
            GButton(
                icon: Icons.home,
                text: "Home",
                onPressed: () {
                  Navigator.pushNamed(context, Myhomepage.id);
                }),
            GButton(
                icon: Icons.favorite,
                text: "Favourites",
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    FavouritePage.id,
                  );
                }
                // // onPressed: () {
                // //   Navigator.pop(
                // //       context,
                // //       MaterialPageRoute(
                // //           builder: (context) => const MyFavourites()));
                // },
                ),
            GButton(
              icon: Icons.settings,
              text: "Settings",
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MySettings()));
              },
            ),
          ]),
    );
  }
}
