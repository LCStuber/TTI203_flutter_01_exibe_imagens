import 'package:flutter/material.dart';
import '../models/image_model.dart';

class ImageList extends StatelessWidget {
  final List<ImageModel> imagens;

  const ImageList(this.imagens, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: imagens.length,
      itemBuilder: (BuildContext context, int index) {
        return Image.network(imagens[index].url);
      },
    );
  }
}
