import 'package:flutter/material.dart';


class EditPic extends StatefulWidget {
  @override
  _EditPicState createState() => _EditPicState();
}

class _EditPicState extends State<EditPic> {
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
              Text('Upload a photo of yourself:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                ),
              ),
              SizedBox(height: 10,),
              Image.asset('assets/missing texture.jpg'),
              SizedBox(height: 10),

              RaisedButton(
                onPressed: (){print('Confirm pressed');
                Navigator.pop(context,this);
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
}
