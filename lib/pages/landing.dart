import 'package:flutter/material.dart';
import 'package:task/pages/homepage.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(),
            child: Image.asset("assets/pnglanding.png"),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 223, 210, 247),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(80),
                    topRight: Radius.circular(80))),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 30, top: 35),
                  child: Text(
                    "Plan your Task Management Easily",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                        color: Color.fromARGB(255, 40, 4, 103)),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 70),
                  margin: const EdgeInsets.only(top: 30),
                  child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                          iconColor: const Color.fromARGB(255, 249, 251, 250),
                          backgroundColor: Colors.deepPurple[300],
                        
                          padding: const EdgeInsets.all(30)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Myhomepage()));
                      },
                      label: const Icon(
                        Icons.arrow_right_alt_outlined,
                      )),
                ),
              ],
            ),
          )
          // Container(
          //   child: const Padding(
          //     padding: EdgeInsets.only(left: 30, top: 35),
          //     child: Text(
          //       "Plan your Task Management Easily",
          //       style: TextStyle(
          //           fontWeight: FontWeight.bold,
          //           fontSize: 40,
          //           color: Color.fromARGB(255, 40, 4, 103)),
          //     ),
          //   ),
          // ),
          // const Spacer(),
          // Padding(
          //   padding: const EdgeInsets.only(bottom: 70),
          //   child: ElevatedButton.icon(
          //       style: ElevatedButton.styleFrom(
          //           iconColor: const Color.fromARGB(255, 249, 251, 250),
          //           backgroundColor: Colors.deepPurple[300],
          //           padding: const EdgeInsets.all(30)),
          //       onPressed: () {
          //         Navigator.push(
          //             context,
          //             MaterialPageRoute(
          //                 builder: (context) => const Myhomepage()));
          //       },
          //       label: const Icon(
          //         Icons.arrow_right_alt_outlined,
          //       )),
          // )
        ],
      ),
    );
  }
}
