
import 'package:flutter/material.dart';

class Mail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("集市"),
      ),
      body: Center(
        child: Text("集市", style: TextStyle(fontSize: 30),),
      ),
    );
  }
}

