
// Imports
import 'package:beatlestube/CustomSearchDelegate.dart';
import 'package:beatlestube/telas/Info.dart';
import 'package:beatlestube/telas/Inicio.dart';
import 'package:beatlestube/telas/Playlists.dart';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

var _indiceAtual = 0;
String _resultado = "";

  @override
  Widget build(BuildContext context) {

  List<Widget> telas = [
     Inicio(_resultado),
     Playlists(),
     Info(),
  ];

    return Scaffold(

      appBar: AppBar(

        backgroundColor: Colors.white,
        title: Image.asset("images/beatles-tube.png", width: 170, height: 200),

        actions: <Widget>[

          IconButton(
              icon: Icon(Icons.search),
              color: Colors.black87,
              onPressed: () async {
              String res =  await showSearch(context: context, delegate: CustomSearchDelegate());
              setState(() {
                _resultado = res;
              });
              print("resultado-> " + res );
              }
          ),

          /*
          IconButton(
              icon: Icon(Icons.videocam),
              color: Colors.black87,
              onPressed: (){}
          ),

          IconButton(
              icon: Icon(Icons.account_circle),
              color: Colors.black87,
              onPressed: (){}
          ),
         */
        ],
      ),

      body: Container(
        padding: EdgeInsets.all(15),
        child: telas[_indiceAtual],
      ),


      bottomNavigationBar: BottomNavigationBar(

        currentIndex: _indiceAtual,
        onTap: (indice){
            setState(() {
              _indiceAtual = indice;
            });
        },

        type: BottomNavigationBarType.shifting,

        items: [
            BottomNavigationBarItem(
              title: Text("Vídeos", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color:Colors.black87)),
              icon: Icon(Icons.home, color: Colors.black87),
            ),

          /*
            BottomNavigationBarItem(
              title: Text("Playlists", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color:Colors.black87)),
              icon: Icon(Icons.playlist_play, color: Colors.black87),
            ),
         */
           BottomNavigationBarItem(
            title: Text("Sobre", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color:Colors.black87)),
            icon: Icon(Icons.info, color: Colors.black87),
          ),


          ], // items
      ),

    );
  }
}
