import 'package:flutter/material.dart';

class AppState extends State<App> {
  int numeroImagens = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: const Text("MInhas Imagens!")),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add), onPressed: () => setState(() {})),
      body: Text(numeroImagens.toString()),
    ));
  }

  @override
  void setState(VoidCallback fn) {
    numeroImagens++;
    super.setState(fn);
  }
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() {
    return AppState();
  }
}
