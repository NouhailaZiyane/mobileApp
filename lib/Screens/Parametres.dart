import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test/Screens/signUP.dart';

import 'Accueil.dart';
import 'ListeEmpl.dart';

class Parametres extends StatefulWidget {
  const Parametres({Key? key}) : super(key: key);

  @override
  State<Parametres> createState() => _ParametresState();
}

class _ParametresState extends State<Parametres> {
  @override
  Widget build(BuildContext context) {
    int index=2;
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          SizedBox(height: 0.034 * h),
          Container(
            width: w,
            height: 0.3 * h,
            decoration: BoxDecoration(color: Colors.lightBlueAccent),
            child: Column(
              children: [
                SizedBox(height: h * 0.1),
               Expanded(
                  child: CircleAvatar(
                    radius: 80,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage("images/free-user-icon-295-thumb.png"),
                  ),
                ),
              ],
            ),
          ),SizedBox(height: h*0.02,),
          Scrollbar(
              child: ListView(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  padding: const EdgeInsets.all(2),
                  children: <Widget>[
                    SizedBox(height: h*0.01,),
                    Container(
                      margin: EdgeInsets.only(left: 0.25*w),
                      child:
                        Text("Nouhaila Ziyane", style: GoogleFonts.aBeeZee(fontSize: 25, color: Colors.lightBlue, fontWeight: FontWeight.w700),)
                    ), SizedBox(height: h*0.02,),
                    Container(
                      padding: EdgeInsets.all(2),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(color: Colors.lightBlueAccent)),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 0.02 * w,
                              ),
                             Icon(Icons.account_circle, size: 50,),
                              Flexible(
                                child: Column(
                                  children: [
                                    Text(
                                      " Modifier les informations du compte",
                                      style: GoogleFonts.acme(
                                          fontSize: 20,
                                          color: Colors.lightBlueAccent),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),SizedBox(height: h*0.01,),
                    Container(
                      padding: EdgeInsets.all(2),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(color: Colors.lightBlueAccent)),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 0.02 * w,
                              ),
                              Icon(Icons.delete, size: 50,),
                              Flexible(
                                child: Column(
                                  children: [
                                    Text(
                                      " Supprimer votre compte",
                                      style: GoogleFonts.acme(
                                          fontSize: 20,
                                          color: Colors.lightBlueAccent),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: h*0.01,),
                    Container(
                      padding: EdgeInsets.all(2),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(color: Colors.lightBlueAccent)),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 0.02 * w,
                              ),
                              Icon(Icons.logout, size: 50,),
                              Flexible(
                                child: Column(
                                  children: [
                                    Text(
                                      " Se déconnecter",
                                      style: GoogleFonts.acme(
                                          fontSize: 20,
                                          color: Colors.lightBlueAccent),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: h*0.01,),
                    Container(
                      padding: EdgeInsets.all(2),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(color: Colors.lightBlueAccent)),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 0.02 * w,
                              ),
                              Icon(Icons.switch_account, size: 50,),
                              Flexible(
                                child: Column(
                                  children: [
                                    Text(
                                      " Switcher vers le  profil client",
                                      style: GoogleFonts.acme(
                                          fontSize: 20,
                                          color: Colors.lightBlueAccent),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    )
                  ]))
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
              builder: (context) => Parametres(),
            ));
        break;

    }
  }
}
