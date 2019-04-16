import 'package:flutter/material.dart';


void main(){
  runApp(Hero());
}

class Hero extends StatefulWidget {
  _HeroState createState() => _HeroState();
}

class _HeroState extends State<Hero> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "hero animation",
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hero"),
      ),
      body: Container(
        child: _HeroState()
      ),
    );
  }
}

class DetailPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Detail Page"),),
      body: Container(child: Image.asset('images/car.jpg')),
    );
  }
  
}