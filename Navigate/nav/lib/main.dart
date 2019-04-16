import 'package:flutter/material.dart';

void main(){
  runApp(MainApp());
  }
  
class MainApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '1',
      routes: {
        '1':(context)=> Mainpage(),
        '1second':(context)=>SecondPage()
      },

      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.blueAccent,
      ),
      home: Mainpage()
    );
      }
    }
    


class Mainpage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Page"),
      ),
      body: Center(
        child: Container(
          child: RaisedButton(
            child: Text("Press"),
            onPressed: (){
              Navigator.pushNamed(
              context,
              '1second'
              );
            },
          ),
        ),
      ),
    );
  }
}



class SecondPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
      ),
      body: Center(
        child: Container(
          child: RaisedButton(
            child: Text("Go back"),
            onPressed: (){
              Navigator.pop(context);
            },
          ),
        ),
      ),
    );
  }
  
}