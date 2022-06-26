import 'package:flutter/material.dart';
class SearchBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Stack(
      children:<Widget>[
        Container(
          width:MediaQuery.of(context).size.width * 0.7,
          height: 30,
          padding: EdgeInsets.symmetric(horizontal: 30),
          decoration: BoxDecoration(
            color:Colors.grey,
            borderRadius: BorderRadius.circular(30),
          ),
          child: TextField(
            decoration: InputDecoration.collapsed(
                hintText: 'Search'
            ),
          ),
        ),

        Align(
          alignment: Alignment.centerRight,
          child: IconButton(padding: EdgeInsets.fromLTRB(10, 4, 50, 20),
          icon: Icon(Icons.search_outlined), onPressed: () {  },
          ),
        )
      ]
    );
  }
}
