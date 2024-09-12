import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:task/pages/homepage.dart';

class MyFavourites extends StatelessWidget {
  static const String id = 'favorite';
  // final List<List<dynamic>> data;
  // final MyTasks myTasks;
  // final FavouriteBloc favouriteBloc;
  const MyFavourites({
    super.key,
    //   required this.favouriteBloc,

    //   //  required this.data,
  });

  @override
  Widget build(BuildContext context) {
    {
      return Scaffold(
        appBar: AppBar(
          title: Text(
            "Favourite tasks",
            style: TextStyle(
                color: Colors.deepPurple[900],
                fontSize: 20,
                fontWeight: FontWeight.w500),
          ),
          centerTitle: true,
          elevation: 0,
          toolbarHeight: 80,
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
                onPressed: () {},
                icon: const Icon(
                  Icons.person,
                  color: Colors.deepPurple,
                  size: 40,
                ),
              ),
            )
          ],
        ),
        body: Column(
          children: [
            // Container(
            //   padding: const EdgeInsets.all(15),
            //   margin: const EdgeInsets.all(20),
            //   decoration: const BoxDecoration(
            //       color: Color.fromARGB(255, 233, 225, 247),
            //       borderRadius: BorderRadius.all(Radius.circular(30))),
            //   child: const Row(
            //     children: [
            //       Icon(
            //         Icons.search,
            //         color: Colors.black45,
            //       ),
            //       SizedBox(
            //         width: 20,
            //       ),
            //       Text(
            //         "search",
            //         style: TextStyle(
            //           color: Color.fromARGB(255, 114, 108, 115),
            //         ),
            //       )
            //     ],
            //   ),
            // ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search),
                    hintText: "Search",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            Image.asset(
              "assets/favourite.png",
              height: 150,
              width: 150,
              opacity: const AlwaysStoppedAnimation(.5),
            ),
            const Text(
              "Add your favorite tasks",
              style: TextStyle(color: Colors.black38),
            )
            // ...Globaldata().data.map((task) {
            //   Globaldata().data.indexOf(task);

            //   // print('task');
            //   // print(task);
            //   if (task.last == true) {
            //     return MyTasks(
            //       taskName: task[0],
            //       taskcomplete: task[1],
            //       onChanged: (value) {
            //         // return checkBoxChanged(value, index);
            //       },
            //       deleteFunction: (context) {
            //         // return deleteTask;
            //       },
            //     );
            //   } else {
            //     return Container();
            //   }
            // }),
            // ListView.builder(
            //   itemBuilder: (context, index) {
            //     return ListTile(
            //       title: ,
            //     );
            //   },
            // )
            // Container(
            //   padding: const EdgeInsets.only(
            //       top: 15, left: 30, right: 30, bottom: 15),
            //   child: Container(
            //     padding: const EdgeInsets.only(
            //         left: 25, right: 15, top: 15, bottom: 15),
            //     decoration: const BoxDecoration(
            //         color: Color.fromARGB(255, 92, 71, 125),
            //         borderRadius: BorderRadius.all(Radius.circular(10))),
            //     child: const Row(
            //       children: [
            //         Text(
            //           "Meeting with john",
            //           style: TextStyle(
            //               fontSize: 18,
            //               fontWeight: FontWeight.w400,
            //               color: Colors.white),
            //         ),
            //         // const Text(
            //         //   "12:30 - 13:00",
            //         //   style: TextStyle(
            //         //       color: Colors.white70,
            //         //       fontSize: 15,
            //         //       fontWeight: FontWeight.bold),
            //         // )
            //       ],
            //     ),
            //   ),
            // ),
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
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Myhomepage()));
                },
              ),
              const GButton(
                icon: Icons.favorite,
                text: "Favourites",
              ),
              const GButton(icon: Icons.settings, text: "Settings"),
            ]),
      );
    }
  }
}
