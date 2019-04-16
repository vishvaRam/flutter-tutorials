import 'package:flutter/material.dart';

void main(){
  runApp(Myapp());
}

class Myapp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _MyappState();
  }
}

class _MyappState extends State<Myapp>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.deepPurpleAccent, title: Text("Dawer"),),
      drawer: Drawer(

        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[

          DrawerHeader(
            child: Center(child: Text("Drawer Header",style: TextStyle(color: Colors.white,fontSize: 24.0),)),
            decoration: BoxDecoration(color: Colors.purpleAccent),
          ),

          Container(
            padding: EdgeInsets.all(4.0),
            child: ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile"),
              subtitle: Text("Login"),
              trailing: Text("0"),
              onTap: (){},
            ),
          ),
          Divider(height: 2.0,color: Colors.purple,),

          Container(
            padding: EdgeInsets.all(4.0),
            child: ListTile(
              leading: Icon(Icons.signal_wifi_off),
              title: Text("Wifi"),
              subtitle: Text("Turn of"),
              trailing: Text("0"),
              onTap: (){
                Navigator.pop(context);
              },
            ),
          ),
          Divider(height: 2.0,color: Colors.purple,),

        ],),
      ),

    );
  }

} 