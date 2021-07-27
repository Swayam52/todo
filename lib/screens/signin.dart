import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:todo/routes.dart';
import 'package:todo/screens/signup.dart';

class SignIn extends StatefulWidget {
  const SignIn({ Key? key }) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
               Column(
                children: [
                  SizedBox(
                    height: 60
                  ),
                  Text(
                    "Welcome",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20), 
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.all(Radius.circular(15))
                    ),
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: "Email",
                            hintText: "Enter Email",
                          ),
                  ),
                      ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                    
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: "Password",
                            hintText: "Enter Password",
                          ),
                        ),
                    ),
                  )
                  
                ],
              ),
              SizedBox(height: 20),
              ElevatedButton(
                child: Text("Sign In"),
                onPressed: () {
                  Navigator.pushNamed(context, MyRoutes.homeRoute);
                },
              ),
              SizedBox(height: 10),
              TextButton(
                child: Text("Forgot Password?"),
                onPressed: () {},
              ),
              TextButton(
                child: Text("Not a Member? Sign Up Here"),
                onPressed: () {
                  Navigator.pushNamed(context, MyRoutes.signupRoute);
                },
              ),
          ]
        ),
      ),
    );
  }
}