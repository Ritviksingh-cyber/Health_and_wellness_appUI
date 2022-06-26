import 'package:flutter/material.dart';
import 'package:flutter_projects/models/catalog.dart';
import 'package:flutter_projects/pages/Exercies_and_medication.dart';
class Precautions extends StatelessWidget {
  final Item catalog;
  const Precautions({Key? key, required this.catalog})
      :assert(catalog!= null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title:const Text("Precautionary Measures"),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: ()=>Navigator.push(context, MaterialPageRoute(
            builder: (context)=>Exercise(catalog: catalog)
        )),
        icon: const Icon(Icons.monitor_heart_outlined), label: const Text("Exercises"),
      ),
      body:  Container(
        color: Colors.orangeAccent,
        child: SafeArea(
          child: Column(
            children: [
              Container(
                color:Colors.orangeAccent,
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
                          colors: [Colors.yellow,Colors.redAccent]

                      ),

                    ),
                    child: Expanded(
                      child: (
                          Text(catalog.precautions)),
                    ),
                  ),

                ),
              )

            ],
          ),

        ),
      ),);


  }
}
