import 'package:flutter/material.dart';
class EditEmail extends StatefulWidget {
  @override
  _EditEmailState createState() => _EditEmailState();
}

class _EditEmailState extends State<EditEmail> {
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
          padding: EdgeInsets.fromLTRB(30,10,30,30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text('What\'s your email?',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                ),
              ),
              SizedBox(height: 20,),
              Container(
                decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Your email address',
                    labelStyle: TextStyle(color: Colors.grey[400]),
                  ),
                  controller: myController,
                  style: TextStyle(
                    letterSpacing: 1.5,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Expanded(
                child: SizedBox(height:5),
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
