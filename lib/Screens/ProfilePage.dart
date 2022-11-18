import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
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
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
