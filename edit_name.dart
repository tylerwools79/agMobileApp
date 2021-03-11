import 'package:flutter/material.dart';

class EditName extends StatefulWidget {
  @override
  _EditNameState createState() => _EditNameState();
}

class _EditNameState extends State<EditName> {
  final myController1 = TextEditingController();
  final myController2 = TextEditingController();
  @override
  void dispose(){
    myController1.dispose();
    myController2.dispose();
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
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(0,0,0,15),
                child: Text('What\'s your name?',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                    ),
                  ),
              ),
              SizedBox(height: 20,),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: 'First Name',
                            //border: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey[300], width: 2,)),
                            labelStyle: TextStyle(
                              color: Colors.grey[400],
                            ),
                            contentPadding: EdgeInsets.all(8),
                          ),
                          controller: myController1,
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 5),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                        child:  TextField(
                          decoration: InputDecoration(
                            labelText: 'Last Name',
                            labelStyle: TextStyle(color: Colors.grey[400]),
                            contentPadding: EdgeInsets.all(8),
                          ),
                          controller: myController2,
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: SizedBox(height: 20,)
                ),
                RaisedButton(
                  onPressed: (){
                    _sendDataBack(context);
                  },
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
    String retData = '${myController1.text} ${myController2.text}';
    Navigator.pop(context, retData);
  }
}
