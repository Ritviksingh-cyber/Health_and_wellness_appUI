       //home page coding in flutter
import 'package:flutter/material.dart';
import 'package:flutter_projects/models/catalog.dart';
import 'package:flutter_projects/widgets/drawer.dart';
import '../../widgets/home_widget/SearchBar.dart';
import '../../widgets/home_widget/catalog_header.dart';
import '../../widgets/home_widget/cataloggrid.dart';


class HomePage extends StatefulWidget {

  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //string type of value
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 25,
       title:const Text(
          "Remidicious",
          style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic
          ),
        ),
            centerTitle:true,
      ),

      drawer: MyDrawer(),
        backgroundColor:Colors.white70,
        body:SafeArea(
            child: Container(
              padding:const EdgeInsets.all(32.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:[
                    SearchBar(),
                    const CatalogHeader(),
                    if (CatalogModel.items.isNotEmpty)
                      const Expanded
                        (
                          child: CatalogGrid()
                      )
                    else
                      const Center(
                        child: CircularProgressIndicator(),
                      )
                  ]

              ),
            )
        ),

    );
  }
}

