import 'package:demo_first_app/main.dart';
import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  const ListPage({super.key});

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: MaterialButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Icon(Icons.arrow_back),
        ),
      ),
      body: ListView(
        children: const <Widget>[
          ListTile(
            leading: Icon(Icons.map),
            title: Text("Maps"),
            subtitle: Text("Here you can see maps"),
          ),
          ListTile(
            leading: Icon(Icons.abc_sharp),
            title: Text("ABC"),
            subtitle: Text("These are alphabets"),
          ),
          ListTile(
            leading: Icon(Icons.alarm),
            title: Text("Alarm"),
            subtitle: Text("You can set alarm here"),
          ),
          ListTile(
            leading: Icon(Icons.sailing),
            title: Text("Sail"),
            subtitle: Text("You can sail here"),
          ),
          ListTile(
            leading: Icon(Icons.youtube_searched_for),
            title: Text("Search Again"),
            subtitle: Text("You can search again here"),
          ),
          ListTile(
            leading: Icon(Icons.insert_emoticon),
            title: Text("Emote"),
            subtitle: Text("You can get emotes here!"),
          ),
        ],
      ),
    );
  }
}
