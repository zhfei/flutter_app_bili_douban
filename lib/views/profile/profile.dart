
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("我的"),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(title: Text("联系人"), leading: Icon(Icons.people),),
          ListTile(title: Text("联系人"), leading: Icon(Icons.people),),
          ListTile(title: Text("联系人"), leading: Icon(Icons.people),),
          ListTile(title: Text("联系人"), leading: Icon(Icons.people),),
          ListTile(title: Text("联系人"), leading: Icon(Icons.people),),
          ListTile(title: Text("联系人"), leading: Icon(Icons.people),),
          ListTile(title: Text("联系人"), leading: Icon(Icons.people),),
        ],
      )
      ,
    );
  }
}

