import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';
import 'package:test/Screens/ListeEmpl.dart';
import 'package:test/Screens/signUP.dart';

import 'Accueil.dart';
import 'Auth.dart';

class ListeServices extends StatefulWidget {
  const ListeServices({Key? key}) : super(key: key);

  @override
  State<ListeServices> createState() => _ListeServicesState();
}

class _ListeServicesState extends State<ListeServices> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      // backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: new IndexedStack(
        index: index,
        children: <Widget>[
          Column(
            children: [
              SizedBox(
                height: h * 0.05,
                width: w * 0.08,
              ),
              Row(
                children: [
                  Image.asset(
                    "images/lg.png",
                    width: 70,
                  ),
                  Text(
                    " Choisissez une catégorie",
                    style: GoogleFonts.adventPro(
                        fontSize: 30, fontWeight: FontWeight.w700),
                  )
                ],
              ),
              SizedBox(
                height: h * 0.05,
              ),
              Scrollbar(
                child: ListView(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(2),
                    children: <Widget>[
                      Container(
                        height: h * 0.1,
                        color: Colors.lightBlueAccent,
                        child: Row(
                          children: [
                            SizedBox(
                              width: 0.02 * w,
                            ),
                            Image.asset(
                              "images/pl.png",
                              width: 70,
                            ),
                            Text(
                              "  Plomberie",
                              style: GoogleFonts.aclonica(fontSize: 25),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: h * 0.01,
                      ),
                      Container(
                        height: h * 0.1,
                        color: Colors.lightBlueAccent,
                        child: Row(
                          children: [
                            SizedBox(
                              width: 0.02 * w,
                            ),
                            Image.asset("images/ele.png"),
                            Text(
                              " Electricité",
                              style: GoogleFonts.aclonica(fontSize: 25),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: h * 0.01,
                      ),
                      Container(
                        height: h * 0.1,
                        color: Colors.lightBlueAccent,
                        child: Row(
                          children: [
                            SizedBox(
                              width: 0.02 * w,
                            ),
                            Image.asset("images/pei.png"),
                            Text(
                              " Peinture & Sol",
                              style: GoogleFonts.aclonica(fontSize: 25),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: h * 0.01,
                      ),
                      Container(
                        height: h * 0.1,
                        color: Colors.lightBlueAccent,
                        child: Row(
                          children: [
                            SizedBox(
                              width: 0.02 * w,
                            ),
                            Image.asset("images/cli.png"),
                            Text(
                              " Climatisation",
                              style: GoogleFonts.aclonica(fontSize: 25),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: h * 0.01,
                      ),
                      Container(
                        height: h * 0.1,
                        color: Colors.lightBlueAccent,
                        child: Row(
                          children: [
                            SizedBox(
                              width: 0.02 * w,
                            ),
                            Image.asset(
                              "images/bri.png",
                              width: 70,
                            ),
                            Text(
                              " Bricolage et Rénov",
                              style: GoogleFonts.aclonica(fontSize: 25),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: h * 0.01,
                      ),
                      Container(
                        height: h * 0.1,
                        color: Colors.lightBlueAccent,
                        child: Row(
                          children: [
                            SizedBox(
                              width: 0.02 * w,
                            ),
                            Image.asset(
                              "images/fe.png",
                              width: 70,
                            ),
                            Text(
                              " Femme de ménage",
                              style: GoogleFonts.aclonica(fontSize: 25),
                            )
                          ],
                        ),
                      ),
                    ]),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (int newIndex) {
          setState(() {
            index = newIndex;
            switchIndex(index);
            });
        },
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home_filled),
            label: "Home",
          ),
          BottomNavigationBarItem(
              icon: new Icon(Icons.message), label: "Messagerie"),
          BottomNavigationBarItem(
              icon: new Icon(Icons.settings), label: "Paramètres"),
          BottomNavigationBarItem(
              icon: new Icon(Icons.person), label: "Mon Compte"),
        ],
      ),
    );
  }
  void switchIndex(int index){
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
              builder: (context) => SignUp(),
            ));
        break;
      case 3:
        Navigator.push(
            context, // HERE You need context
            MaterialPageRoute(
              builder: (context) => Auth(),
            ));
        break;

    }
  }
}
