// import 'package:flutter/material.dart';
// import 'package:flutter_slidable/flutter_slidable.dart';

// // ignore: must_be_immutable
// class MyTasks extends StatefulWidget {
//   final String taskName;
//   final bool taskcomplete;
//   Function(bool?)? onChanged;
//   Function(BuildContext)? deleteFunction;

//   MyTasks({
//     super.key,
//     required this.taskName,
//     required this.taskcomplete,
//     required this.onChanged,
//     required this.deleteFunction,
//   });

//   @override
//   State<MyTasks> createState() => _MyTasksState();
// }

// class _MyTasksState extends State<MyTasks> {
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         Expanded(
//           flex: 20,
//           child: Container(
//             margin: const EdgeInsetsDirectional.only(end: 30),
//             padding:
//                 const EdgeInsets.only(top: 15, left: 30, right: 30, bottom: 15),
//             child: Slidable(
//               endActionPane: ActionPane(
//                 motion: const StretchMotion(),
//                 children: [
//                   SlidableAction(
//                     onPressed: widget.deleteFunction,
//                     icon: Icons.delete,
//                     backgroundColor: const Color.fromARGB(255, 205, 50, 50),
//                     borderRadius: BorderRadius.circular(20),
//                   )
//                 ],
//               ),
//               child: Expanded(
//                 child: Container(
//                   padding: const EdgeInsets.all(10),
//                   decoration: const BoxDecoration(
//                       color: Color.fromARGB(255, 92, 71, 125),
//                       borderRadius: BorderRadius.all(Radius.circular(15))),
//                   child: Row(
//                     children: [
//                       Row(children: [
//                         Checkbox(
//                           value: widget.taskcomplete,
//                           onChanged: widget.onChanged,
//                           activeColor: const Color.fromARGB(255, 229, 180, 5),
//                         ),

//                         Text(
//                           widget.taskName,
//                           style: const TextStyle(
//                               fontSize: 18,
//                               fontWeight: FontWeight.w400,
//                               color: Colors.white),
//                         ),

//                         // const Text(
//                         //   "12:30 - 13:00",
//                         //   style: TextStyle(
//                         //       color: Colors.white70,
//                         //       fontSize: 15,
//                         //       fontWeight: FontWeight.bold),
//                         // )
//                       ]),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ),
//         Expanded(
//             child: IconButton(
//                 onPressed: () {}, icon: const Icon(Icons.favorite_border)))
//       ],
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:provider/provider.dart';
import 'package:task/provider/favourites.dart';

// class task {
//   final String name;
//   bool isComplete;

//   task({required this.name, this.isComplete = false});
// }

// ignore: must_be_immutable
class MyTasks extends StatefulWidget {
  final String taskName;
  final bool taskcomplete;
  Function(bool?)? onChanged;
  Function(BuildContext)? deleteFunction;

  MyTasks({
    super.key,
    required this.taskName,
    required this.taskcomplete,
    required this.onChanged,
    required this.deleteFunction,
  });

  @override
  State<MyTasks> createState() => _MyTasksState();
}

class _MyTasksState extends State<MyTasks> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<Favouriteprovider>(context);
    final isFavourite = provider.isFavourite(widget.taskName);
    return Row(
      children: [
        Expanded(
          flex: 20,
          child: Container(
            margin: const EdgeInsetsDirectional.only(end: 10), // Reduced margin
            padding: const EdgeInsets.only(
                top: 15, left: 20, right: 10, bottom: 15), // Reduced padding
            child: Slidable(
              endActionPane: ActionPane(
                motion: const StretchMotion(),
                children: [
                  SlidableAction(
                    onPressed: widget.deleteFunction,
                    icon: Icons.delete,
                    backgroundColor: const Color.fromARGB(255, 205, 50, 50),
                    borderRadius: BorderRadius.circular(20),
                  )
                ],
              ),
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color.fromARGB(255, 92, 71, 125),
                        width: 3),
                    // color: Color.fromARGB(255, 92, 71, 125),
                    borderRadius: const BorderRadius.all(Radius.circular(15))),
                child: Row(
                  children: [
                    Checkbox(
                      value: widget.taskcomplete,
                      onChanged: widget.onChanged,
                      activeColor: const Color.fromARGB(255, 92, 71, 125),
                    ),
                    Text(
                      widget.taskName,
                      style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 17, 1, 45)),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        // ...Globaldata().data.map((task) {
        //   Globaldata().data.indexOf(task);

        // print('task');
        // print(task);
        // if (task.last == true) {
        //   return MyTasks(
        //     taskName: task[0],
        //     taskcomplete: task[1],
        //     onChanged: (value) {
        //       // return checkBoxChanged(value, index);
        //   //     },
        //       deleteFunction: (context) {
        //         // return deleteTask;
        //       },
        //     );
        //   } else {
        //     return Container();
        //   }
        // }),
        IconButton(
          onPressed: () {
            provider.toggleFavourite(widget.taskName);
          },
          icon: isFavourite
              ? const Icon(Icons.favorite,
                  size: 30, color: Color.fromARGB(255, 231, 35, 100))
              : const Icon(
                  Icons.favorite_outline,
                  size: 30,
                  color: Color.fromARGB(255, 76, 52, 117),
                ),
        ),
      ],
    );
  }
}
