import 'package:flutter/material.dart';

import '../../models/catalog.dart';
import '../../pages/home_detail_page.dart';
import 'catalog_item.dart';

class CatalogGrid extends StatelessWidget {
  const CatalogGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: 10,
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount
          (
          crossAxisCount:2,
          mainAxisSpacing:16,
          crossAxisSpacing: 16,
        ),
        itemBuilder:(context, index)
        {
          final catalog = CatalogModel.items[index];
          return InkWell(
              onTap: ()=>Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context)=>HomeDetailPage(
                    catalog: catalog,
                  ),
                ),
              ),
              child: CatalogItem( catalog: catalog)
          );

        }
    );
  }
}
