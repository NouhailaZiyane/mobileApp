import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Auth extends StatefulWidget {
  const Auth({Key? key}) : super(key: key);

  @override
  State<Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return Scaffold(
        resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 0.07 * w),
            width: w * 0.4,
            height: h * 0.3,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("images/lg.png"))),
          ),
          SizedBox(height: h * 0.01),
          Container(
              margin: EdgeInsets.only(left: 0.07 * w),
              child: Text(
                "Bienvenue",
                style: GoogleFonts.adventPro(
                    fontSize: 33, fontWeight: FontWeight.w700),
              )),
          Container(
              margin: EdgeInsets.only(left: 0.07 * w),
              child: Text("Connectez vous",
                  style: GoogleFonts.adventPro(fontSize: 20))),
          SizedBox(height: h * 0.05),
          Container(
            margin: EdgeInsets.only(left: 0.04 * w),
            width: w * 0.85,
            child: TextFormField(
              decoration: const InputDecoration(
                icon: Icon(Icons.person),
                hintText: 'Entrez votre tél/Email ',
                labelText: 'Numero tél/Email *',
              ),
              validator: (String? value) {
                return (value != null && value.contains('@'))
                    ? 'Do not use the @ char.'
                    : null;
              },
            ),
          ),
          SizedBox(height: h * 0.02),
          Container(
            margin: EdgeInsets.only(left: 0.04 * w),
            width: w * 0.85,
            child: TextFormField(
              decoration: const InputDecoration(
                icon: Icon(Icons.password),
                hintText: 'Entrez votre Mot de passe ',
                labelText: 'Mot de passe *',
              ),
            ),
          ),
          SizedBox(height: h * 0.05),
          Container(
            padding: EdgeInsets.only(left: 65, right: 65, bottom: 20, top: 20),
            margin: EdgeInsets.only(left: w*0.05),
            child: Text("S'inscrire",
                style: GoogleFonts.abel(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontSize: 20)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.green,
            ),
          ),SizedBox(height: 0.01*h, width: 0.5*w,),
    Container(
      margin: EdgeInsets.only(left: 0.07*w),
      child: RichText(
      text: TextSpan(
      text: "Vous n’avez pas un compte ? ",
      style: TextStyle(fontSize: 20, color: Colors.black),
        children: [
          TextSpan(
          text: "s’inscrire",
          style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w700)),
        ]
      )),
    ),
        ],
      ),
    );
  }
}
