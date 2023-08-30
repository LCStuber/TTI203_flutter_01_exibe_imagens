import 'package:flutter/material.dart';

class App extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: const Text("MInhas Imagens!")),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add), onPressed: () => print("Batata")),
      body: Image.network(
          "https://media.tenor.com/EQdcclOwXSkAAAAC/spongebob-spongebob-meme.gif"),
    ));
  }
}
