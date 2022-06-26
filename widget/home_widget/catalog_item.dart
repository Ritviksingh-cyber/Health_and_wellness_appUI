import 'package:flutter/material.dart';

import '../../models/catalog.dart';
import 'catalo_image.dart';

class CatalogItem extends StatelessWidget {
  final Item catalog;
  // ignore: use_key_in_widget_constructors
  const CatalogItem({required this.catalog});


  @override
  Widget build(BuildContext context) {
    return GridTile(
        footer: Container(
            padding: const EdgeInsets.all(4),
            decoration:const BoxDecoration(
              color:Colors.yellow,
            ),
            child: Text(
              catalog.name,
              style: const TextStyle(fontWeight: FontWeight.bold),)
        ),
        child:
        Column(
            children:[
              CatalogImage(
                image:catalog.image,
              ),
            ]));
  }
}


