import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key, required this.image, required this.name, required this.price});

  final String image;
  final String name;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: CachedNetworkImage(
                imageUrl:image,
              width: double.infinity,
                errorWidget: (context, url, error) => Icon(Icons.error),
                placeholder: (context, url) => Center(child: SizedBox(
                    width: 25,
                    child: CircularProgressIndicator(strokeWidth: 1,))),
                 ),
            ),
          ),          Text(name),
          Text(price),

        ],
      ),
    );
  }
}
