import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test/Screens/Auth.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    String? dropdownvalue = 'Personne';

    var items = [
      'Personne',
      'Employé',
    ];
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          SizedBox(height: h * 0.1),
          Container(
              margin: EdgeInsets.only(left: 0.05 * w),
              child: Text(
                "Bienvenue",
                style: GoogleFonts.adventPro(
                    fontSize: 33, fontWeight: FontWeight.w700),
              )),
          Container(
              margin: EdgeInsets.only(left: 0.05* w),
              child: Text("Connectez vous",
                  style: GoogleFonts.adventPro(fontSize: 20))),
          Container(
            margin: EdgeInsets.only(left: 0.08 * w),
            width: 0.3 * w,
            height: 0.3 * h,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage("images/free-user-icon-295-thumb.png"),
            )),
          ),
          Container(
            margin: EdgeInsets.only(left: 0.07 * w),
            width: w * 0.85,
            child: DropdownButton(
                value: dropdownvalue,
                icon: Icon(Icons.keyboard_arrow_down),
                items: items.map((items) {
                  return DropdownMenuItem(value: items, child: Text(items));
                }).toList(),
                onChanged: (String? newValue) {
                  dropdownvalue = newValue;
                }),
          ),
          SizedBox(height: h * 0.01),
          Container(
            margin: EdgeInsets.only(left: 0.04 * w),
            width: w * 0.85,
            child: TextFormField(
              decoration: const InputDecoration(
                icon: Icon(Icons.email),
                hintText: 'Entrez votre Email/Tél ',
                labelText: 'Email/Tél *',
              ),
            ),
          ),SizedBox(height: h * 0.01),
          Container(
            margin: EdgeInsets.only(left: 0.04 * w),
            width: w * 0.85,
            child: TextFormField(
              decoration: const InputDecoration(
                icon: Icon(Icons.location_city),
                hintText: 'Entrez votre Ville ',
                labelText: 'Ville *',
              ),
            ),
          ),SizedBox(height: h * 0.01),
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
          ),SizedBox(height: h * 0.03),
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
          color: Colors.lightBlue,
        ),
      ),SizedBox(height: 0.01*h, width: 0.5*w,),
          Container(
            margin: EdgeInsets.only(left: 0.07*w),
            child: RichText(
                text: TextSpan(
                    text: "Vous avez un compte ? ",
                    style: TextStyle(fontSize: 15, color: Colors.black),
                    children: [
                      TextSpan(
                          text: "se Connecter",
                          style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.w700),
                     recognizer: TapGestureRecognizer()..onTap=()=>{
                Get.to(()=>Auth())}
                      )]
                )),
          ),
        ],
      ),
    );

  }
}
