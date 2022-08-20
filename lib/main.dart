import 'package:flutter/material.dart';
import 'package:profile_app/screens/home_screen.dart';

void main() {
  runApp(profile_app());
}
class profile_app extends StatefulWidget {
  profile_app({Key? key}) : super(key: key);

  @override
  State<profile_app> createState() => _profile_appState();
}

class _profile_appState extends State<profile_app> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
debugShowCheckedModeBanner: false,
home: home_screen(),


    );
  }
}