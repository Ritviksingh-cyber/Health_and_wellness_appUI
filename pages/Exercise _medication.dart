import 'package:flutter/material.dart';
import 'package:newapp/pages/doctor.dart';

import '../models/catalog.dart';


class Exercise extends StatelessWidget {
  final Item catalog;
  const Exercise({Key? key, required this.catalog}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title:const Text("Exercise and medications"),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: ()=>Navigator.push(context, MaterialPageRoute(
            builder: (context)=>Doctor(catalog: catalog)
        )),
        icon: const Icon(Icons.monitor_heart_outlined), label: const Text("Specialists"),
      ),
      body: Container(
        color: Colors.transparent,
        child: SafeArea(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(50),

                decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [Colors.grey,Colors.grey]),

                  borderRadius: BorderRadius.all(Radius.circular(30.0)),


                ),
                child: Image.asset(catalog.image1),
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
                          colors: [Colors.red,Colors.white]

                      ),

                    ),
                    child: Expanded(
                      child: (
                          Text(catalog.Exercise)),
                    ),
                  ),

                ),
              )

            ],
          ),

        ),
      ),
    );
  }
}
