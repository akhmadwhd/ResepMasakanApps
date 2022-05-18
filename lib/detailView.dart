import 'package:flutter/material.dart';
import 'package:resepmasakanapps/resepmodel.dart';

class DetailView extends StatelessWidget {
  const DetailView({Key? key, required this.product}) : super(key: key);

  final ProductDataModel product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
          Image.network(
            product.imageURL.toString(),
            fit: BoxFit.cover,
          ),
          Text(
            "Nama: ${product.name}",
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "Category: ${product.category.toString()}",
            style: const TextStyle(
              fontSize: 10
            ),
          ),
          Text(
            "Bahan : ${product.oldPrice}",
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "Langkah Pembuatan : ${product.price}",
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),


        ]));
  }
}