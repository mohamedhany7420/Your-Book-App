
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomBookItem extends StatelessWidget {
  const CustomBookItem({super.key , required this.height , required this.imageUrl});
  final double height;
 final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: CachedNetworkImage(
        imageUrl: imageUrl,
      fit: BoxFit.fill,
        errorWidget:  (context, url, error) => const Icon(
          Icons.error,
        ),
      )
    );
  }
}
