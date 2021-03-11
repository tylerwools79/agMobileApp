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
        padding: EdgeInsets.all(30),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text('What\'s your name?',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                  ),
                ),
              SizedBox(height: 5,),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('First Name',
                            style: TextStyle(
                              color: Colors.grey[400],

                            ),
                          ),
                          Expanded(
                            //padding: const EdgeInsets.all(10),
                            child: TextField(
                              controller: myController1,
                              style: TextStyle(
                                fontSize: 24,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Last Name',
                            style: TextStyle(
                              color: Colors.grey[400],

                            ),
                          ),
                          Expanded(
                            //padding: const EdgeInsets.all(10),
                            child: TextField(
                                controller: myController2,
                                style: TextStyle(
                                  fontSize: 24,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
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
