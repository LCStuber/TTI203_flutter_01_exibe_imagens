import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import './models/image_model.dart';
import './widgets/image_list.dart';

class AppState extends State<App> {
  int numeroImagens = 0;
  List<ImageModel> imagens = [];

  obterImagem() async {
    final response = await http.get(
        Uri.https("api.pexels.com", '/v1/search', {
          'query': "people",
          "per_page": "1",
          "page": numeroImagens.toString()
        }),
        headers: {
          "Authorization":
              "0nAzv7MjZIQRPLVtUKOCHaOCxCKSz57qJFAVHxOPwRIoLZDUrWPFL2sq"
        });
    final decodedJSON = json.decode(response.body);
    final imagem = ImageModel.fromJSON(decodedJSON);
    setState(() {
      numeroImagens++;
      imagens.add(imagem);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: const Text("MInhas Imagens!")),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add), onPressed: () => obterImagem()),
      body: ImageList(imagens),
    ));
  }
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() {
    return AppState();
  }
}
