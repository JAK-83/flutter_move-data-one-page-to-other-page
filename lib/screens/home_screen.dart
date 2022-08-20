import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:profile_app/componants/listview_with_data.dart';
class home_screen extends StatefulWidget {
  home_screen({Key? key}) : super(key: key);

  @override
  State<home_screen> createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // backgroundColor: Colors.green[100],
      appBar: AppBar(

title: Text("Books ",style: TextStyle(fontWeight: FontWeight.bold),),
backgroundColor: Color.fromARGB(255, 82, 85, 85),
centerTitle: true,
leading: Image.asset("images/logo.png"),//used image as logo
      ),

body: SafeArea(child: 



data(),









),

    );
  }
} 