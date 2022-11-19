import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test/Screens/signUP.dart';

import 'Accueil.dart';
import 'ListeEmpl.dart';
import 'Parametres.dart';

class Profil extends StatefulWidget {
  const Profil({Key? key}) : super(key: key);

  @override
  State<Profil> createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  @override
  Widget build(BuildContext context) {
    int index = 3;
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body:
        Column(
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
                      backgroundImage:
                          AssetImage("images/free-user-icon-295-thumb.png"),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: h * 0.02,
            ),
            Scrollbar(
                child: ListView(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(2),
                    children: <Widget>[
                  SizedBox(
                    height: h * 0.002,
                  ),
                  Container(
                      margin: EdgeInsets.only(left: 0.25 * w),
                      child: Text(
                        "Nouhaila Ziyane",
                        style: GoogleFonts.aBeeZee(
                            fontSize: 25,
                            color: Colors.black,
                            fontWeight: FontWeight.w700),
                      )),
                  SizedBox(
                    height: h * 0.02,
                  ),
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
                            Icon(
                              Icons.location_city,
                              size: 50,
                            ),
                            Flexible(
                              child: Column(
                                children: [
                                  Text(
                                    " Ville",
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
                  SizedBox(
                    height: h * 0.01,
                  ),
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
                            Icon(
                              Icons.onetwothree,
                              size: 50,
                            ),
                            Flexible(
                              child: Column(
                                children: [
                                  Text(
                                    " Tél:",
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
                  SizedBox(
                    height: h * 0.01,
                  ),
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
                            Icon(
                              Icons.email,
                              size: 50,
                            ),
                            Flexible(
                              child: Column(
                                children: [
                                  Text(
                                    " Email: ",
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
                  SizedBox(
                    height: h * 0.01,
                  ),
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
                            Icon(
                              Icons.output,
                              size: 50,
                            ),
                            Flexible(
                              child: Column(
                                children: [
                                  Text(
                                    " Autre",
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
    );
  }
}
