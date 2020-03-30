import 'package:flutter/material.dart';

class Playlists extends StatefulWidget {
  @override
  _PlaylistsState createState() => _PlaylistsState();
}

class _PlaylistsState extends State<Playlists> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          "Playlists",
          style: TextStyle(
              fontSize: 22
          ),
        ),
      ),
    );
  }
}