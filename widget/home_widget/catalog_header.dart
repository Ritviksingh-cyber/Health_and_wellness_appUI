import 'package:flutter/material.dart';

class CatalogHeader extends StatelessWidget {
  const CatalogHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children:const [
          Text
            (
            "  Let's make you Healthy",
            style: TextStyle
              (
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.red,
            ),
          ),
          // Padding(padding:EdgeInsets.all(4.0)),
          Text(" Most common health issues",
            style: TextStyle
              (
              fontWeight:FontWeight.w400,
            ),
          ),
        ]
    );
  }
}
