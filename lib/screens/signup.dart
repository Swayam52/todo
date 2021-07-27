import 'package:flutter/material.dart';
import 'package:todo/routes.dart';

class SignUp extends StatefulWidget {
  const SignUp({ Key? key }) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
                    "Register",
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
                            labelText: "Re-enter Password",
                            hintText: "Re-enter your Password",
                          ),
                        ),
                    ),
                  )
                  
                ],
              ),
              SizedBox(height: 20),
              ElevatedButton(
                child: Text("Sign Up"),
                onPressed: () {},
              ),
              TextButton(
                child: Text("Already a Member? Sign In"),
                onPressed: () {
                  Navigator.pushNamed(context, MyRoutes.signinRoute);
                },
              )
          ]
        ),
      ),

    );
      
  }
}