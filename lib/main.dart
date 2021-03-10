import 'package:ag_coding_project/presentation/custom_icon_icons.dart';
import 'package:flutter/material.dart';

void main() =>  runApp(MaterialApp(
  home: Home()
));
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String fName = '';
  String lName = '';
  String phoneNumber = '';
  String eMail = '';
  String aboutMe = '';
  String profilePicPath='assets/missing texture.jpg';
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
            Padding(
              padding: EdgeInsets.fromLTRB(0, 30, 0, 20),
              child: TextButton(
                //This is the profile picture section
                onPressed: (){
                  setState((){ //this does not work yet!
                    profilePicPath='assets/default.jpg';
                    print('Change profile pic');
                  });
                },
                child: new Stack(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundColor: Colors.blue,
                      radius: 75,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/default.jpg'),//Image(image: FileImage(File(profilePicPath))),
                        radius: 70,
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
            TextButton(
                onPressed: (){
                  setState((){
                    fName='John';
                    lName='Doe';
                  });
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('NAME',
                          style: TextStyle(
                            color: Colors.grey[400],
                            letterSpacing: 0.5,
                          ),
                          ),
                          SizedBox(height:5.0),
                          Text('$fName $lName',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.5,
                          )
                          ),
                          SizedBox(height:10),
                          Divider(height: 20),
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
            TextButton(
                onPressed: (){
                  setState((){
                    phoneNumber = '1-(555)-555-5555';
                  });
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('PHONE NUMBER',
                            style: TextStyle(
                              color: Colors.grey[400],
                              letterSpacing: 0.5,
                            ),
                          ),
                          SizedBox(height:5.0),
                          Text('$phoneNumber',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 0.5,
                              )
                          ),
                          SizedBox(height:10),
                          Divider(height: 20),
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
            TextButton(
                onPressed: (){
                  setState((){
                    eMail='john.doe@email.com';
                  });
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('EMAIL',
                            style: TextStyle(
                              color: Colors.grey[400],
                              letterSpacing: 0.5,
                            ),
                          ),
                          SizedBox(height:5.0),
                          Text('$eMail',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 0.5,
                              )
                          ),
                          SizedBox(height:10),
                          Divider(height: 20),
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
            TextButton(
                onPressed: (){
                  setState((){
                    aboutMe='Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse dolor diam, lobortis in semper et, facilisis at metus. Fusce iaculis scelerisque nibh et aliquet. Fusce iaculis ligula et lectus viverra sollicitudin. Nulla velit arcu, imperdiet id molestie eu, mollis eget metus. Mauris nisl mauris, dapibus vitae risus ac, fringilla varius.';
                  });
                },
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
                          SizedBox(height:5.0),
                          ConstrainedBox(
                            constraints: BoxConstraints(maxHeight: 50),
                            child: Text('$aboutMe',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 0.5,
                                )
                            ),
                          ),
                          SizedBox(height:10),
                          Divider(height: 20),
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
          ]
        )

      )
    );
  }
}
