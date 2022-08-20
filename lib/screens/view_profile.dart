import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:profile_app/componants/listview_with_data.dart';
import 'package:profile_app/screens/buy.dart';

class view_profile extends StatelessWidget {
  final User user;

  const view_profile({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: Text(
            user.username,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          backgroundColor: Color.fromARGB(255, 82, 85, 85),
          centerTitle: true,
          leading: Image.asset("images/logo.png"), //used image as logo
        ),
        body: ListView(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Image.network(
                      user.imgurl,
                      height: 400,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      user.username,
                      style:
                          TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      user.email,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
Text("Type: PDF ",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),

                    SizedBox(
                      height: 20,
                    ),
                    Text(
                        '''Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.

Why do we use it?
It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).


Where does it come from?
Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.

The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.'''),

                    SizedBox(
                      height: 20,
                    ),

//button
InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>puchess(user: user,)));},

child:  Container(
                    
                      height: 50,
                      width: 130,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 184, 248, 248),
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),topRight: Radius.circular(10),topLeft: Radius.circular(30),bottomRight: Radius.circular(30)),
                      ),


                      child: Center(child: Text("Download",style: TextStyle(fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 75, 71, 71),
                      fontSize: 20,
                      ),)),
                    ),





),
                   
                    SizedBox(
                      height: 20,
                    ),

                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
