import 'package:flutter/material.dart';

import 'package:flutter/foundation.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Pass Data",
      theme: ThemeData(
        primaryColor: Colors.red[300],
      ),
      home: MyHomePage() ,
    );
  }
}

class MyHomePage extends StatefulWidget{
    
  @override
  State<StatefulWidget> createState() {
    return _MyHomePage();
  }
}

class _MyHomePage extends State<MyHomePage>{
  
  var _textController =TextEditingController(); 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Page"),backgroundColor: Theme.of(context).primaryColor,),
      body: ListView(children: <Widget>[
        Container(margin: EdgeInsets.all(12.0),
          child: Column(children: <Widget>[
            TextField(
              controller: _textController,
              obscureText: ,
            ),
            RaisedButton(
              child: Text("Press Me"),
              onPressed: (){

                var route =MaterialPageRoute(
                  builder: (BuildContext context)=>NextPage(value: _textController.text,)
                );

                Navigator.of(context).push(route);
              },
            )
          ],),
        )
      ],)
    );
  }
}

class NextPage extends StatefulWidget {
    
  final String value;
  const NextPage({Key key, this.value}) : super(key: key);

  _NextPageState createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  @override
 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Next Page"),backgroundColor: Theme.of(context).primaryColor,),
      body:Container(child: Text("Hi ${widget.value}"),) ,
    );
  }
}