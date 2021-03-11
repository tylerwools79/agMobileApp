import 'package:flutter/material.dart';

import 'package:ag_coding_project/pages/edit_name.dart';
import 'package:ag_coding_project/pages/edit_phone.dart';
import 'package:ag_coding_project/pages/edit_email.dart';
import 'package:ag_coding_project/pages/edit_about.dart';
import 'package:ag_coding_project/pages/edit_picture.dart';


void main() =>  runApp(MaterialApp(
  initialRoute: '/home',
  routes: {
    '/': (context)=> Home(),
    '/home':(context)=> Home(),
    '/name': (context)=> EditName(),
    '/phone': (context)=> EditPhone(),
    '/email': (context)=> EditEmail(),
    '/about': (context)=> EditAbout(),
    '/picture': (context)=> EditPic(),
  },
));


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String fullName='';
  String phoneNumber = '';
  String eMail = '';
  String aboutMe = '';
  String profilePicPath='assets/missing texture.jpg';
  void _awaitName(BuildContext context) async {
    final result = await Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => EditName(),
        ));
    setState((){
      fullName=result;
    });
  }
  void _awaitPhone(BuildContext context) async {
    final result = await Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => EditPhone(),
        ));
    setState(() {
      phoneNumber = result;
    });
  }
  void _awaitEmail(BuildContext context) async {
    final result = await Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => EditEmail(),
        ));
    setState(() {
      eMail = result;
    });
  }
  void _awaitAbout(BuildContext context) async {
    final result = await Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => EditAbout(),
        ));
    setState((){
      aboutMe=result;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Profile',
          style: TextStyle(
            color: Colors.blue,
            fontSize: 20.0,
            letterSpacing: 1.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        //color: Colors.blue,
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: TextButton(
                    //This is the profile picture section
                    onPressed: (){
                      Navigator.pushNamed(context,'/picture');
                      setState((){ //this does not work yet!
                        profilePicPath='assets/default.jpg';
                        print('Change profile pic');
                      });
                    },
                    child: new Stack(
                      children: <Widget>[
                        CircleAvatar(
                          backgroundColor: Colors.blue,
                          radius: 60,
                          child: CircleAvatar(
                            backgroundImage: AssetImage('assets/default.jpg'),//Image(image: FileImage(File(profilePicPath))),
                            radius: 55,
                        ),
                      ),
                        new Positioned(
                          right: 0.0,
                          top: 0.0,
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                              child: new Icon(
                                Icons.account_circle_rounded,
                                color: Colors.blue,
                              )
                          )
                        )
                     ]
                    )
                  ),
                ),
            ), //Profile Picture
            Expanded(
              flex: 1,
              child: TextButton(
                  onPressed: (){ _awaitName(context); },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('NAME',
                            style: TextStyle(
                              color: Colors.grey[400],
                              letterSpacing: 0.5,
                            ),
                            ),
                            //SizedBox(height:5.0),
                            Text('$fullName',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0.5,
                            )
                            ),
                            Divider(height: 10),
                          ],
                        ),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Colors.grey[400],
                          size: 35.0,
                      )
                    ],
                  )
              ),
            ), //Name
            Expanded(
              flex: 1,
              child: TextButton(
                  onPressed: (){ _awaitPhone(context); },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                    Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('PHONE NUMBER',
                                style: TextStyle(
                                  color: Colors.grey[400],
                                  letterSpacing: 0.5,
                                ),
                              ),
                              //SizedBox(height:5.0),
                              Text('$phoneNumber',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 0.5,
                                  )
                              ),
                              Divider(height: 10),
                            ],
                          ),

                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Colors.grey[400],
                        size: 35.0,
                      )
                    ],
                  )
              ),
            ), //Phone Number
            Expanded(
              flex: 1,
              child: TextButton(
                  onPressed: (){ _awaitEmail(context); },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                    Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('EMAIL',
                                style: TextStyle(
                                  color: Colors.grey[400],
                                  letterSpacing: 0.5,
                                ),
                              ),
                              //SizedBox(height:5.0),
                              Text('$eMail',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 0.5,
                                  )
                              ),
                              Divider(height: 10),
                            ],
                          ),

                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Colors.grey[400],
                        size: 35.0,
                      )
                    ],
                  )
              ),
            ), //Email
            Expanded(
              flex: 2,
              child: TextButton(
                  onPressed: (){ _awaitAbout(context);},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('TELL US ABOUT YOURSELF',
                              style: TextStyle(
                                color: Colors.grey[400],
                                letterSpacing: 0.5,
                              ),
                            ),
                           // SizedBox(height:5.0),
                            Text('$aboutMe',
                                  maxLines: 5,
                                  overflow: TextOverflow.ellipsis,
                                  softWrap: false,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 0.5,
                                  )
                              ),

                            Divider(height: 10),
                          ],
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Colors.grey[400],
                        size: 35.0,
                      )
                    ],
                  )
              ),
            ), //About Me
          ]
        )

      )
    );
  }

}
