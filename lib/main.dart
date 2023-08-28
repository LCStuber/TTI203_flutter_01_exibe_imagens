import 'package:flutter/material.dart';

void main() {
  var app = MaterialApp(
      home: Scaffold(
    appBar: AppBar(title: const Text("MInhas Imagens!")),
    floatingActionButton: FloatingActionButton(onPressed: () => print("oi")),
    body: Image.network(
        "https://media.tenor.com/EQdcclOwXSkAAAAC/spongebob-spongebob-meme.gif"),
  ));
  runApp(app);
}
