import 'package:flutter/material.dart';

class MyCalender extends StatefulWidget {
  const MyCalender({super.key});

  @override
  State<MyCalender> createState() => _MyCalenderState();
}

class _MyCalenderState extends State<MyCalender> {
  var currentWeekList = ["Sun", "Mon", "Tue", "Wed", "Thur", "Fri", "Sat"];

  var currentDateTime = DateTime.now();
  bool isCurrentDay(DateTime date) {
    final now = DateTime.now();
    return now.year == date.year &&
        now.month == date.month &&
        now.day == date.day;
  }

  DateTime getDateForDay(int offset) {
    return currentDateTime.add(Duration(days: offset));
  }

//for gesture dectector

  void ontapscreen() {}
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ontapscreen();
       
      },
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            for (int i = 0; i < 10; i++)
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                padding: const EdgeInsets.symmetric(vertical: 10),
                width: 100,
                height: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  gradient: LinearGradient(
                    // ignore: unrelated_type_equality_checks
                    colors: (isCurrentDay(getDateForDay(i)))
                        ? [
                            // const Color.fromARGB(255, 149, 125, 189),
                            // const Color.fromARGB(255, 178, 149, 234),
                            // const Color.fromARGB(255, 178, 156, 212),
                            const Color.fromARGB(255, 114, 110, 215)
                                .withOpacity(0.9),
                            const Color.fromARGB(255, 159, 166, 219)
                                .withOpacity(0.8),
                            const Color.fromARGB(255, 175, 177, 230)
                                .withOpacity(0.7),
                          ]
                        : [
                            const Color.fromARGB(255, 143, 114, 188),
                            const Color.fromARGB(255, 178, 149, 234),
                            const Color.fromARGB(255, 178, 156, 212),
                          ],
                  ),
                ),
                child: Column(
                  children: [
                    Text(
                      currentWeekList[getDateForDay(i).weekday % 7],
                      style: const TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                          color: Colors.black54),
                    ),
                    Text(
                      getDateForDay(i).day.toString(),
                      style: const TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 11, 50, 101)),
                    )
                  ],
                ),
              )
          ],
        ),
      ),
    );

    // return Padding(
    //   padding: const EdgeInsets.all(30),
    //   child: GestureDetector(
    //     onTap: () {
    //       setState(() {
    //         currentDateTime = currentWeekList[index];
    //       });
    //     },
    //     child: Container(
    //       height: 140,
    //       width: 100,
    //       decoration: BoxDecoration(
    //           gradient: LinearGradient(
    //               colors: (currentWeekList[index] != currentDateTime.day)
    //                   ? [
    //                       Colors.white.withOpacity(0.9),
    //                       Colors.white.withOpacity(0.8),
    //                       Colors.white.withOpacity(0.7),
    //                     ]
    //                   : [
    //                       const Color.fromARGB(255, 149, 125, 189),
    //                       const Color.fromARGB(255, 178, 149, 234),
    //                       const Color.fromARGB(255, 178, 156, 212)
    //                     ],
    //                   begin: FractionalOffset(0.0, 0.0),
    //                   end: FractionalOffset(0.0, 1.0),
    //                   stops: (0.0, 0.5,1.0))),
    //     ),
    //   ),
    // );
  }
}
