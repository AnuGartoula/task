// import 'package:flutter/material.dart';
// import 'package:google_nav_bar/google_nav_bar.dart';
// import 'package:table_calendar/table_calendar.dart';
// import 'package:task/pages/homepage.dart';

// //  creating a class event to write the events for the calendar
// class Event {
//   final String title;
//   Event(this.title);
// }

// class Calendar extends StatefulWidget {
//   const Calendar({super.key});

//   @override
//   State<Calendar> createState() => _CalenderState();
// }

// class _CalenderState extends State<Calendar> {
//   final _controller = TextEditingController();
//   late final ValueNotifier<List<Event>> selectedEvents;

//   DateTime today = DateTime.now();

//   void _onDaySelected(DateTime selectedDay, DateTime focusedDay) {
//     setState(() {
//       today = selectedDay;
//       selectedEvents.value = _getDayevents(selectedDay);
//     });
//   }

//   @override
//   void initState() {
//     super.initState();
//     selectedEvents = ValueNotifier(_getDayevents(today));
//   }

//   // for creating a task on a respective event

//   Map<DateTime, List<Event>> events = {};

//   // void createNewTask() {
//   //   showDialog(
//   //     context: context,
//   //     builder: (context) {
//   //       return MyDialog(
//   //         controller: _controller,
//   //         oncancel: () => Navigator.of(context).pop(),
//   //         onsave: saveNewTask,
//   //       );
//   //     },
//   //   );
//   // }

//   // void saveNewTask() {
//   //   setState(() {
//   //     ([_controller.text, false]);
//   //     _controller.clear();
//   //   });
//   //   Navigator.of(context).pop();
//   // }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   List<Event> _getDayevents(DateTime day) {
//     return events[day] ?? [];
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         elevation: 0,
//         leading: Padding(
//           padding: const EdgeInsets.only(left: 20.0),
//           child: IconButton(
//             onPressed: () {
//               Navigator.push(context,
//                   MaterialPageRoute(builder: (context) => const Myhomepage()));
//             },
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
//       body: ListView(
//         children: [
//           Container(
//               alignment: Alignment.center, child: const Text("My Calendar")),
//           TableCalendar(
//             headerStyle: const HeaderStyle(formatButtonVisible: false),
//             availableGestures: AvailableGestures.all,
//             focusedDay: today,
//             firstDay: DateTime.utc(2010, 10, 16),
//             lastDay: DateTime.utc(2025, 12, 12),
//             selectedDayPredicate: (day) {
//               return isSameDay(today, day);
//             },
//             onDaySelected: _onDaySelected,
//             eventLoader: _getDayevents,
//           ),
//           const SizedBox(
//             height: 30,
//           ),
//           ValueListenableBuilder(
//               valueListenable: selectedEvents,
//               builder: (context, value, _) {
//                 return ListView.builder(itemBuilder: (context, index) {
//                   return Padding(
//                       padding: const EdgeInsets.only(
//                           top: 15, left: 30, right: 30, bottom: 15),
//                       child: Container(
//                         width: 500,
//                         padding: const EdgeInsets.all(20),
//                         decoration: const BoxDecoration(
//                             color: Color.fromARGB(255, 92, 71, 125),
//                             borderRadius:
//                                 BorderRadius.all(Radius.circular(10))),

//                         child: ListTile(
//                           onTap: () => print(""),
//                           title: Text('${value[index]}'),
//                         ),
//                         // child: const Text(
//                         //   "Meeting with John",
//                         //   style: TextStyle(
//                         //       fontSize: 18,
//                         //       fontWeight: FontWeight.w400,
//                         //       color: Colors.white),
//                         // ),
//                       ));
//                 });
//               }),
//           // Padding(
//           //   padding:
//           //       const EdgeInsets.only(top: 15, left: 30, right: 30, bottom: 15),
//           //   child: Container(
//           //     width: 500,
//           //     padding: const EdgeInsets.all(20),
//           //     decoration: const BoxDecoration(
//           //         color: Color.fromARGB(255, 92, 71, 125),
//           //         borderRadius: BorderRadius.all(Radius.circular(10))),
//           //     child: const Text(
//           //       "Meeting with John",
//           //       style: TextStyle(
//           //           fontSize: 18,
//           //           fontWeight: FontWeight.w400,
//           //           color: Colors.white),
//           //     ),
//           //   ),
//           // ),
//         ],
//       ),
//       // children: [

//       //   const Text(
//       //     "Calendar",
//       //     style: TextStyle(
//       //       decoration: TextDecoration.none,
//       //       color: Colors.deepPurple,
//       //       fontWeight: FontWeight.bold,
//       //       fontSize: 20,
//       //     ),
//       //   ),
//       //   TableCalendar(
//       //     firstDay: DateTime.utc(2010, 10, 16),
//       //     lastDay: (DateTime.utc(2025, 12, 12)),
//       //     focusedDay: today,
//       //   )
//       // ],

//       // floatingActionButton: Container(
//       //   decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
//       //   child: FloatingActionButton(
//       //     onPressed: createNewTask,
//       //     child: const Icon(
//       //       Icons.add,
//       //       color: Colors.black,
//       //     ),
//       //   ),
//       // ),
//       floatingActionButton: FloatingActionButton(
//         child: const Icon(Icons.add),
//         onPressed: () {
//           showDialog(
//               context: context,
//               builder: (context) {
//                 return AlertDialog(
//                   scrollable: true,
//                   title: const Text('Add a Event'),
//                   content: Padding(
//                     padding: const EdgeInsets.all(10),
//                     child: TextField(
//                       controller: _controller,
//                     ),
//                   ),
//                   actions: [
//                     ElevatedButton(
//                         onPressed: () {
//                           //store the event name into a map
//                           events.addAll({
//                             _onDaySelected: [Event(_controller.text)]
//                           });
//                           Navigator.of(context).pop();
//                           selectedEvents.value = _getDayevents(_onDaySelected!);
//                         },
//                         child: const Text("submit"))
//                   ],
//                 );
//               });
//         },
//       ),

//       bottomNavigationBar: const GNav(
//           gap: 7,
//           color: Color.fromARGB(255, 255, 255, 255),
//           activeColor: Color.fromARGB(255, 17, 1, 45),
//           backgroundColor: Color.fromARGB(255, 174, 162, 201),
//           tabs: [
//             GButton(
//               icon: Icons.home,
//               text: "Home",
//             ),
//             GButton(
//               icon: Icons.favorite,
//               text: "Favourites",
//             ),
//             GButton(icon: Icons.search, text: "Search Taks"),
//             GButton(icon: Icons.settings, text: "Settings"),
//           ]),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:task/pages/homepage.dart';

//  creating a class event to write the events for the calendar
class Event {
  final String title;
  Event(this.title);

  @override
  String toString() => title; // To display the event title correctly
}

class Calendar extends StatefulWidget {
  const Calendar({super.key});

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  final _controller = TextEditingController();
  late final ValueNotifier<List<Event>> selectedEvents;
  DateTime today = DateTime.now();
  Map<DateTime, List<Event>> events = {};

  @override
  void initState() {
    super.initState();
    selectedEvents = ValueNotifier(_getDayEvents(today));
  }

  void _onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    setState(() {
      today = selectedDay;
      selectedEvents.value = _getDayEvents(selectedDay);
    });
  }

  List<Event> _getDayEvents(DateTime day) {
    return events[day] ?? [];
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Myhomepage()),
              );
            },
            icon: const Icon(
              Icons.arrow_back_rounded,
              color: Colors.deepPurple,
              size: 40,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.person,
                color: Colors.deepPurple,
                size: 50,
              ),
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          Container(
            alignment: Alignment.center,
            child: const Text("My Calendar",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 78, 46, 133),
                )),
          ),
          TableCalendar(
            headerStyle: const HeaderStyle(formatButtonVisible: false),
            availableGestures: AvailableGestures.all,
            focusedDay: today,
            firstDay: DateTime.utc(2010, 10, 16),
            lastDay: DateTime.utc(2025, 12, 12),
            selectedDayPredicate: (day) {
              return isSameDay(today, day);
            },
            onDaySelected: _onDaySelected,
            eventLoader: _getDayEvents,
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            margin: const EdgeInsets.only(left: 25),
            child: const Text(
              "Upcoming Events",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 78, 46, 133),
              ),
            ),
          ),
          ValueListenableBuilder<List<Event>>(
            valueListenable: selectedEvents,
            builder: (context, value, _) {
              return ListView.builder(
                shrinkWrap: true,
                itemCount: value.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(
                        top: 15, left: 30, right: 30, bottom: 15),
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color.fromARGB(255, 92, 71, 125),
                            width: 3),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(15)),
                      ),
                      child: ListTile(
                        onTap: () => print(""),
                        title: Text(
                          '${value[index]}',
                          style: const TextStyle(
                              color: Color.fromARGB(255, 17, 1, 45),
                              fontWeight: FontWeight.w400,
                              fontSize: 18),
                        ),
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                scrollable: true,
                title: const Text('Add an Event'),
                content: Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: _controller,
                  ),
                ),
                actions: [
                  ElevatedButton(
                    onPressed: () {
                      if (_controller.text.isEmpty) return;
                      setState(() {
                        if (events[today] != null) {
                          events[today]!.add(Event(_controller.text));
                        } else {
                          events[today] = [Event(_controller.text)];
                        }
                        _controller.clear();
                        selectedEvents.value = _getDayEvents(today);
                      });
                      Navigator.of(context).pop();
                    },
                    child: const Text("Submit"),
                  )
                ],
              );
            },
          );
        },
      ),
      bottomNavigationBar: const GNav(
        gap: 7,
        color: Color.fromARGB(255, 255, 255, 255),
        activeColor: Color.fromARGB(255, 17, 1, 45),
        backgroundColor: Color.fromARGB(255, 174, 162, 201),
        tabs: [
          GButton(
            icon: Icons.home,
            text: "Home",
          ),
          GButton(
            icon: Icons.favorite,
            text: "Favourites",
          ),
          GButton(icon: Icons.settings, text: "Settings"),
        ],
      ),
    );
  }
}
