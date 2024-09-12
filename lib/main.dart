import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task/pages/Homepage.dart';
import 'package:task/pages/favourite_tile.dart';
import 'package:task/pages/landing.dart';
import 'package:task/pages/users.dart';
import 'package:task/provider/favourites.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // Globaldata().data;

    return ChangeNotifierProvider(
        create: (context) => Favouriteprovider(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: Myhomepage.id,
          routes: {
            Myhomepage.id: (context) => const Myhomepage(),
            MyFavourites.id: (context) => const MyFavourites(),
            UserLogin.id: (context) => const UserLogin(),
          },
          home: const LandingPage(),
        ));
  }
}
