import 'package:flutter/material.dart';

void main(){
  runApp(
      new MaterialApp(
          home: new HelloButton()
      )
  );
}

class HelloButton extends StatefulWidget{
  @override
  HelloButtonState createState() => new HelloButtonState();
}

class HelloButtonState extends State<HelloButton>{

  String result = "";
  String greeting = "";


  void _increase() {
    setState((){
      greeting = "Hello $result";
    });
  }

  @override
  Widget build(BuildContext context){
    return new Scaffold(
        appBar: new AppBar(title: new Text('Hello World'), backgroundColor: Colors.deepOrange ),
        body: new Container(
            child: new Center(
                child: new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new TextField(
                          decoration: new InputDecoration(
                              hintText: "What's your name?"
                          ),
                          onChanged: (String str){
                            setState(()
                            {
                              result = str;
                            });

        }
                      ),
                      new Text(greeting, style: new TextStyle(fontSize: 30)),
                      new RaisedButton(
                          child: new Text('click me'),
                          color: Colors.blue,
                          onPressed: _increase,
                      ),

                    ]
                )
            )
        )
    );
  }
}