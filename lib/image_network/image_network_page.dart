import 'package:flutter/material.dart';
import 'package:flutter_usecases/retail_fadein_image.dart';

class ImageNetworkPage extends StatelessWidget {
  const ImageNetworkPage({super.key});

  final imageUrl404 =
      "https://dfcdn.defacto.com.tr/1/Z4111AZ_NS_BK27_01_03.jpg";

  final imageUrl =
      "https://cdn.pixabay.com/photo/2023/10/21/07/25/mountains-8330900_1280.jpg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("image network page "),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return RetailFadeInImage(
      imageUrl: imageUrl,
    );
  }
}
