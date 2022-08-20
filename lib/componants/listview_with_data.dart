// ignore: unnecessary_import
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:profile_app/screens/view_profile.dart';

////////////////////////////////////////////////////////create class for list data

class User{
final String username;
final String email;
final String imgurl;

const User({

required this.username,
required this.email,
required this.imgurl,


});
}








///////////////////////////////////////////////////////

class data extends StatefulWidget {
  data({Key? key}) : super(key: key);

  @override
  State<data> createState() => _dataState();
  
}
class _dataState extends State<data> {
 
 ///////////////////////create list
  List <User> users=[
 User(
email:'By: Muhammad Amir',
username:'C#',
imgurl:'https://books.google.com.pk/books/publisher/content?id=Yd0MEAAAQBAJ&pg=PP1&img=1&zoom=3&hl=en&sig=ACfU3U1edNaWBd8lw15MIsMEvAQ5kuNQ6A&w=1280',

),

User(
email:'By: Jameel ahmed',
username:'C++',
imgurl:'https://books.google.com.pk/books/content?id=J1HMLyxqJfgC&pg=PA1&img=1&zoom=3&hl=en&sig=ACfU3U1ALxVU_InA6IBddostISb_wHuXoQ&w=1280',

),
User(
email:'By:Avinash',
username:'Javascript',
imgurl:'https://books.google.com.pk/books/publisher/content?id=IS0EAwAAQBAJ&pg=PP1&img=1&zoom=3&hl=en&sig=ACfU3U08arYzoz8yR_QuIF_1zpJ0VWEOqA&w=1280',

),
User(
email:'By: Atta',
username:'Python',
imgurl:'https://books.google.com.pk/books/publisher/content?id=qtdkAgAAQBAJ&pg=PP1&img=1&zoom=3&hl=en&sig=ACfU3U0lsu0k7ua3-ovFuNDRREtZUmxxPw&w=1280',

),
User(
email:'By: Adil',
username:'HTML',
imgurl:'https://books.google.com.pk/books/content?id=aGjaBTbT0o0C&pg=PP1&img=1&zoom=3&hl=en&sig=ACfU3U3TnGtzol-JfoaXN-OOGq3N-dqXHg&w=1280',

),
User(
email:'By:Ghulam hyder',
username:'Flutter',
imgurl:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3TSrOALgYE7I2Tgb70pEfi0Vd0e9XWQ_uO1Tz5KrEr7SXw8n_',

),
User(
email:'Hassan',
username:'css',
imgurl:'https://books.google.com.pk/books/publisher/content?id=DGJUDwAAQBAJ&pg=PP1&img=1&zoom=3&hl=en&sig=ACfU3U2aS1OnXZ0Rw-XIG0pf4PMS3J06LQ&w=1280',

),
 User(
email:'By: Muhammad Amir',
username:'C#',
imgurl:'https://books.google.com.pk/books/publisher/content?id=Yd0MEAAAQBAJ&pg=PP1&img=1&zoom=3&hl=en&sig=ACfU3U1edNaWBd8lw15MIsMEvAQ5kuNQ6A&w=1280',

),

User(
email:'By: Jameel ahmed',
username:'C++',
imgurl:'https://books.google.com.pk/books/content?id=J1HMLyxqJfgC&pg=PA1&img=1&zoom=3&hl=en&sig=ACfU3U1ALxVU_InA6IBddostISb_wHuXoQ&w=1280',

),
User(
email:'By:Avinash',
username:'Javascript',
imgurl:'https://books.google.com.pk/books/publisher/content?id=IS0EAwAAQBAJ&pg=PP1&img=1&zoom=3&hl=en&sig=ACfU3U08arYzoz8yR_QuIF_1zpJ0VWEOqA&w=1280',

),
User(
email:'By: Atta',
username:'Python',
imgurl:'https://books.google.com.pk/books/publisher/content?id=qtdkAgAAQBAJ&pg=PP1&img=1&zoom=3&hl=en&sig=ACfU3U0lsu0k7ua3-ovFuNDRREtZUmxxPw&w=1280',

),
User(
email:'By: Adil',
username:'HTML',
imgurl:'https://books.google.com.pk/books/content?id=aGjaBTbT0o0C&pg=PP1&img=1&zoom=3&hl=en&sig=ACfU3U3TnGtzol-JfoaXN-OOGq3N-dqXHg&w=1280',

),
User(
email:'By:Ghulam hyder',
username:'Flutter',
imgurl:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3TSrOALgYE7I2Tgb70pEfi0Vd0e9XWQ_uO1Tz5KrEr7SXw8n_',

),
User(
email:'By:Hassan',
username:'css',
imgurl:'https://books.google.com.pk/books/publisher/content?id=DGJUDwAAQBAJ&pg=PP1&img=1&zoom=3&hl=en&sig=ACfU3U2aS1OnXZ0Rw-XIG0pf4PMS3J06LQ&w=1280',

),
  ];


  ///////////////////ended list


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
     //[] scrollDirection: Axis.horizontal,
        itemCount: users.length,
     
        itemBuilder: (context, index) {
final user=users[index];
return Card(
  
  shadowColor: Colors.pink,
  elevation: 8,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(user.imgurl),
                  radius: 28,
                  
                  ),
                title: Text(user.username),
                subtitle: Text(user.email),
                trailing: Icon(Icons.more),
                onTap:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>view_profile(user: user,)));},
                
              ),
              
            );





        });
  }
}





