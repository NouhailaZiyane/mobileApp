import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test/Screens/ListeEmpl.dart';

import 'Screens/Accueil.dart';
import 'Screens/Auth.dart';
import 'Screens/listeServ.dart';
import 'Screens/navigationBar.dart';
import 'Screens/signUP.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
        debugShowCheckedModeBanner: false,
      home:
      navBar(),
    );
  }
}
