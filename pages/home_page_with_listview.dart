//home page coding in flutter
import 'package:flutter/material.dart';
import 'package:flutter_projects/models/catalog.dart';


import '../widgets/drawer.dart';
import '../widgets/item_widget.dart';

    class HomePage extends StatelessWidget {
  final int days = 30; //integer type value
   final String name="Ritvik";//string type of value
    
      @override
      Widget build(BuildContext context)
      {
        return Scaffold
          (
          backgroundColor: Colors.white,
          appBar:AppBar
            (
            backgroundColor: Colors.redAccent,
            iconTheme: IconThemeData(color :Colors.white),
            title:const Text("Let's make you Healthy", style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white)),//used to set the tittle of our home page in application app bar
          ),
          body: Padding(
            padding: const EdgeInsets.all(16),
            child:(CatalogModel.items!=null && CatalogModel.items.isNotEmpty)
                ? ListView.builder(
              itemCount: CatalogModel.items.length,
              itemBuilder:(context,index) =>ItemWidget(
                  item: CatalogModel.items[index],
                ),
            )
          :const Center(
                child: CircularProgressIndicator(),
          ),
          ),
          drawer: MyDrawer(),
        );
      }
    }
    
