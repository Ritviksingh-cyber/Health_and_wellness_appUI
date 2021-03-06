import'package:flutter/material.dart';
import 'package:flutter_projects/utils/routes.dart';
import 'package:lottie/lottie.dart';
class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  String name = "";
  bool changeButton= false;

  final _formkey= GlobalKey<FormState>();// a final keyword for having the property of password acceptance and username acceptance.

  moveToHome(BuildContext context) // if the password and username are verified than you can move to home.
    async
    {
    if(_formkey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      },
      );
    }
  }
  @override
  Widget build(BuildContext context) {
    return Material(
        color:Colors.white,
        child:SingleChildScrollView(
          child: Form(
            key:_formkey,

            child: Column(
              children: [
                const SizedBox(
                  height: 30.0,
                ),
                 Center(
                   child: Lottie.network("https://assets3.lottiefiles.com/packages/lf20_jcikwtux.json")
                 ),

                const SizedBox(
                  height:30.0,
                  child: Text("Heya",
                    style: TextStyle(
                      fontWeight:FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                    " Welcome $name",
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    )
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Padding(padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
                  child:Column(
                    children: [
                      TextFormField(
                          decoration: const InputDecoration(
                              hintText:" Enter User Name",
                              labelText: "User Name"
                          ),
                          validator: (value)//validator used to check if the username is filled correctly or not.
                          {
                            if(value!.isEmpty) {
                              return "Username cannot be empty";
                            }
                            return null;
                          },
                          onChanged:(value){
                            name = value;
                            setState((){}); //used to call build method
                          }
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                            hintText:" Enter Password",
                            labelText: "Password"
                        ),
                        validator: (value)//validator used to check if the password is filled or not
                        {
                          if(value!.isEmpty){
                            return "Must enter the Password";
                          }
                          if(value.length<6){
                            return"Password length should be greater than 6 characters";
                          }
                          else {
                           return null;
                          }
                        },
                      ),
                      const SizedBox(
                        height: 40.0,
                      ),
                      InkWell(
                        onTap: () => moveToHome(context),
                        child: AnimatedContainer(
                          duration:Duration(seconds: 1),
                          width:changeButton? 50: 150,
                          height:50,
                          alignment: Alignment.center,
                          child:changeButton ?const Icon(
                            Icons.done,
                            color: Colors.white,
                          )
                              :Text
                            (
                              "Login",
                              style: TextStyle(
                                  color:Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize:18)
                          ),
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(changeButton?20:10.0)

                          ),
                        ),
                      ),
                    ],
                  ),
                )

          ])),
          ),
        );


  }
}
