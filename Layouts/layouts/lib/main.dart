import 'package:flutter/material.dart';

void main(){
  runApp(MainApp());
  }
  
  class MainApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Body(),
          ),
        );
      }
   }
        
class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(children: <Widget>[
        //First container
        Container(
          height: 250.0,
          child: Image.asset('assets/image1.jpg',fit: BoxFit.cover,),
        ),

        //Second container
        Container(
          padding: EdgeInsets.all(28.0),
          child: Row(children: <Widget>[

            Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(padding:EdgeInsets.all(3.0),
                    child: Text("Oeschinen Lake ",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),)
                    ),
                    Text("Switzerland",style:TextStyle(fontWeight: FontWeight.w300))
                  ],
              ), 
            ),
            //Star Icon
            Myfav()
          ],) ,
        ),
        //Third container
        Container(padding: EdgeInsets.all(5.0),child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[

            //First Icon
            Column(children: <Widget>[
              Icon(Icons.call,color: Colors.blue,),
              Text("CALL",style: TextStyle(color:Colors.blue),)
            ],),

            //Second Icon
            Column(children: <Widget>[
              Icon(Icons.navigation,color: Colors.blue,),
              Text("ROUTE",style: TextStyle(color:Colors.blue),)
            ],),

            //Third Icon
            Column(children: <Widget>[
              Icon(Icons.share,color: Colors.blue,),
              Text("SHARE",style: TextStyle(color:Colors.blue),)
            ],)

          ],
        ),),

        //Fourth container
        //Text Section
        Container(
          padding: EdgeInsets.all(32.0),
          child: Text('Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
          'Alps. Situated 1,578 meters above sea level, it is one of the '
          'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a'
          'half-hour walk through pastures and pine forest, leads you to the'
          'enjoyed here include rowing, and riding the summer toboggan run.',
          softWrap: true,
          ),
        )

      ],),
    );
  }
}

class Myfav extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _Myfav();
      }
      
}
    
class _Myfav extends State<Myfav>{
  bool _isFav =true;
  int _favCount = 50;

  void _toggleFav(){
    setState((){
      if(_isFav){
        _favCount-=1;
        _isFav=false;
      }else{
        _favCount+=1;
        _isFav=true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min ,
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(0),
          child: IconButton(
            icon: _isFav ? Icon(Icons.star):Icon(Icons.star_border),
            color: Colors.red[500],
            onPressed: _toggleFav,
          ),
        ),
        SizedBox(
          child: Text("$_favCount"),
        )
      ],
    );
  }
}