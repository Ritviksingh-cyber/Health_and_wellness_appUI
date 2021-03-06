// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_projects/pages/precautions.dart';
import '../models/catalog.dart';



class HomeDetailPage extends StatelessWidget {
  final Item catalog;
  const HomeDetailPage({Key? key,required this.catalog})
      :assert(catalog != null),
        super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title:Text(catalog.name),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: ()=>Navigator.push(
          context, MaterialPageRoute(
            builder: (context)=>Precautions
              (catalog: catalog
            )
        )),
        //backgroundColor: Colors.red,
        label: const Text("Precautions"),
        icon: const Icon(CupertinoIcons.plus_app_fill)),
      bottomNavigationBar: const ButtonBar(),
      body:  SafeArea(
        child: Column(
             children: [
               Container(
                 color:Colors.grey,
                 padding: const EdgeInsets.all(50),
                 child: Image.asset(catalog.image),
               ),
               Expanded(
                   child: SingleChildScrollView(
                     child: Container(

                       padding: const EdgeInsets.all(20),
                       alignment: Alignment.topCenter,
                       width: 400,
                       height: 400,
                       decoration: const BoxDecoration(
                             borderRadius: BorderRadius.all(Radius.circular(60.0)),
                             gradient:LinearGradient(
                                 colors: [Colors.yellow,Colors.amberAccent]

                             ),

                   ),
                         child: Expanded(
                           child: (
                               Text(catalog.desc)),
                         ),
                       ),

                     ),
                   )

               ],
           ),

        ),
      );
  }
}
