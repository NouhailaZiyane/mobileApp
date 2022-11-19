import 'package:flutter/material.dart';
import 'package:test/Screens/profil.dart';

import 'Accueil.dart';
import 'ListeEmpl.dart';
import 'Parametres.dart';

class navBar extends StatefulWidget {
  const navBar({Key? key}) : super(key: key);

  @override
  State<navBar> createState() => _navBarState();
}

class _navBarState extends State<navBar> {
  int index=0;
  final Screens=[
    ListeEmp(),
    Accueil(),
    Parametres(),
    Profil()
  ];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Screens[index],
      bottomNavigationBar: NavigationBar(
        selectedIndex: index,
        onDestinationSelected: (int newIndex) =>
          setState(() => this.index = newIndex),
        backgroundColor: Colors.white,
        destinations: [
          NavigationDestination(icon: new Icon(Icons.home_filled),
            label: "Home",),
        NavigationDestination(
            icon: new Icon(Icons.message), label: "Messagerie"),
        NavigationDestination(
            icon: new Icon(Icons.settings), label: "Paramètres"),
        NavigationDestination(
            icon: new Icon(Icons.person), label: "Mon Compte"),
      ],
      ),
    );
  }

  void switchIndex(int index) {
    switch (index) {
      case 0:
        Navigator.push(
            context, // HERE You need context
            MaterialPageRoute(
              builder: (context) => ListeEmp(),
            ));
        break;

      case 1:
        Navigator.push(
            context, // HERE You need context
            MaterialPageRoute(
              builder: (context) => Accueil(),
            ));
        break;
      case 2:
        Navigator.push(
            context, // HERE You need context
            MaterialPageRoute(
              builder: (context) => Parametres(),
            ));
        break;
      case 3:
        Navigator.push(
            context, // HERE You need context
            MaterialPageRoute(
              builder: (context) => Profil(),
            ));
        break;
    }
  }
}

