import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Accueil extends StatefulWidget {
  const Accueil({Key? key}) : super(key: key);

  @override
  State<Accueil> createState() => _AccueilState();
}

class _AccueilState extends State<Accueil> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(children: [
          SizedBox(height: h * 0.15),
          Container(
            child: Text("M3alem",
                style: GoogleFonts.aBeeZee(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 30)),
          ),
          SizedBox(
            width: w * 3,
            height: h * 0.01,
          ),
          Column(children: [
            Text("Rendez votre vie quotidienne plus facile",
                style: GoogleFonts.aBeeZee(color: Colors.grey, fontSize: 20)),
          ]),
          SizedBox(
            height: h * 0.12,
          ),
          Container(
            width: w * 0.8,
            height: h * 0.4,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      "images/lg.png",
                    ),
                    fit: BoxFit.contain)),
          ),
          Container(
            padding: EdgeInsets.only(left: 50, right: 50, bottom: 20, top: 20),
            child: Text("Se Connecter",
                style: GoogleFonts.abel(color: Colors.white,
                    fontWeight: FontWeight.w900,
                fontSize: 20)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.green,
            ),
          ),SizedBox(height:h*0.03),
          Container(
            padding: EdgeInsets.only(left: 65, right: 65, bottom: 20, top: 20),
            child: Text("S'inscrire",
                style: GoogleFonts.abel(color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontSize: 20)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.green,
            ),
          )
        ]));
  }
}
