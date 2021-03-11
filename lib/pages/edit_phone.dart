import 'package:flutter/material.dart';
class EditPhone extends StatefulWidget {
  @override
  _EditPhoneState createState() => _EditPhoneState();
}

class _EditPhoneState extends State<EditPhone> {
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
              Text('What\'s your phone number?',
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
                    labelText: 'Your phone number',
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
              Expanded(child: SizedBox(height:20,)),
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
