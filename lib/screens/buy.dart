import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:profile_app/componants/listview_with_data.dart';

class puchess extends StatelessWidget {
  final User user;
  
  const puchess({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Color.fromARGB(255, 212, 42, 42),
      body: SafeArea(
          child: Container(
        // color: Colors.yellow,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(user.imgurl),
            fit: BoxFit.fill,
          ),
        ),
      
  child: Padding(
    padding: const EdgeInsets.only(left: 30,right: 30),
    child: Column(
           // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 400,
              ),
              Container(
                height: 200,
                width: 300,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 12, 12, 12).withOpacity(0.5),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  children: [
                    Text(
                      "Book : " + user.username,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.white),
                    ),
                 
                 
                 Text(
                      user.email,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.white),
                    ), 
                    Text("Type : PDF",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.white),),
                    




                    SizedBox(height: 40,),
                    InkWell(onTap: (){  tst("Downloading");  },
                    
                    child:  Container(
                    height: 50,
                   width: 130,
                   decoration: BoxDecoration(
                    color: Color.fromARGB(255, 184, 248, 248),
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),topRight: Radius.circular(10),topLeft: Radius.circular(30),bottomRight: Radius.circular(30)),
                    
                    
                    ),
                   child: Center(child: Text("Download",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
                   
                   ),
                    
                    
                    
                    
                    ),
                  
                   
                   
                   
                    ],
             
              
              
              
                ),
             
             
              ),
            ],
          ),
  ),

      )),
    );
  }

// toast
  void tst(String msg){
    Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM_RIGHT,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );

  }
}
