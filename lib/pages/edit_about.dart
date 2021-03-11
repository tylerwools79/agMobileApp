import 'package:flutter/material.dart';
class EditAbout extends StatefulWidget {
  @override
  _EditAboutState createState() => _EditAboutState();
}

class _EditAboutState extends State<EditAbout> {
  final myController = TextEditingController();
  @override
  void dispose(){
    myController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          backgroundColor: Colors.white,
          centerTitle: true,
          elevation: 0,
        ),
        body: Padding(
          padding: EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text('What type of passenger are you?',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                ),
              ),
              SizedBox(height: 5,),
              TextField(
                  maxLines: 5,
                  controller: myController,
                  decoration: InputDecoration(
                    hintText: 'Write a little bit about yourself. Do you like chatting? Are you a smoker? Do you bring pets with you? Etc.',
                  ),
                  style: TextStyle(
                    letterSpacing: 1.5,
                    fontWeight: FontWeight.bold,
                  ),
              ),
              RaisedButton(
                onPressed: (){_sendDataBack(context);},
                color: Colors.black,
                child: Text('Update',
                  style: TextStyle(color: Colors.white,),),
              ),

            ],
          ),
        )
    );
  }
  void _sendDataBack(BuildContext context){
    String retData = '${myController.text}';
    Navigator.pop(context, retData);
  }
}
