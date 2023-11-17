import 'package:flutter/material.dart';

class RetailFadeInImage extends StatelessWidget {
  const RetailFadeInImage({
    super.key,
    this.fit = BoxFit.fill,
    required this.imageUrl,
  });

  final BoxFit? fit;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return FadeInImage.assetNetwork(
      fit: fit,
      placeholder: "assets/image/loading.gif",
      image: imageUrl,
      imageErrorBuilder: (context, error, stackTrace) {
        return Image.asset("assets/image/no_image.png");
      },
    );
  }
}
